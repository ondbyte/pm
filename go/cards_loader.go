package pipeman

import (
	"context"
	"fmt"
	"net"
	"os"
	"os/exec"
	"runtime"
	"sync/atomic"

	protos "github.com/ondbyte/pm/protos/go"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/structpb"
)

var (
	udsSockEnvKey = "SOCK"
)

func SetUDSSockEnv(sck string) {
	os.Setenv(udsSockEnvKey, sck)
}

var socketN = &atomic.Int32{}

func getRandomSock() string {
	name := fmt.Sprint(socketN.Add(1))
	if runtime.GOOS == "windows" {
		// ensure path is absolute and short
		return os.TempDir() + "\\" + name + ".sock"
	}
	return "/tmp/" + name + ".sock"
}

func createGRPCClient(socketPath string) (*grpc.ClientConn, error) {
	dialer := func(ctx context.Context, _ string) (net.Conn, error) {
		return (&net.Dialer{}).DialContext(ctx, "unix", socketPath)
	}

	return grpc.NewClient(
		"unix:",
		grpc.WithTransportCredentials(insecure.NewCredentials()),
		grpc.WithContextDialer(dialer),
	)
}

// pass a unstarted cmd
func LoadCardsRunnerFromACmd(cmd *exec.Cmd) (cards []InternalCard, stopCh chan struct{}, err error) {
	sock := getRandomSock()
	cmd.Env = append(cmd.Env, udsSockEnvKey+"="+sock)

	err = cmd.Start()
	if err != nil {
		return nil, nil, fmt.Errorf("failed to start program %w", err)
	}
	defer func() {
		if err != nil {
			cmd.Process.Kill()
		}
	}()
	//connect to program server from client
	conn, err := createGRPCClient(sock)
	if err != nil {
		return nil, nil, fmt.Errorf("failed to connect to program %w", err)
	}
	// defer conn.Close()
	client := protos.NewCardsRunnerClient(conn)
	cardsResp, err := client.GetSupportedCards(context.TODO(), &protos.EmptyReq{})
	if err != nil {
		return nil, nil, fmt.Errorf("failed to get supported cards from program %w", err)
	}
	// convert cardsResp to InternalCard
	cards = []InternalCard{}
	for _, card := range cardsResp.Cards {
		cards = append(cards, InternalCard{
			Name: card.Name,
			In:   card.In.AsMap(),
			Out:  card.Out.AsMap(),
			run: func(in CardInput, out CardOutput) (err error) {
				ins, err := structpb.NewStruct(in)
				if err != nil {
					return fmt.Errorf("client.card.run: failed to convert in to struct: %w", err)
				}
				outs, err := structpb.NewStruct(out)
				if err != nil {
					return fmt.Errorf("client.card.run: failed to convert out to struct: %w", err)
				}
				resp, err := client.RunCard(context.TODO(), &protos.CardInputWithCardName{
					Card:   card.Name,
					Input:  ins,
					Output: outs,
				})
				if err != nil {
					return fmt.Errorf("client.card.run: failed to run card: %w", err)
				}
				respMap := resp.AsMap()
				for k, _ := range out {
					out[k] = respMap[k]
				}
				return
			},
		})
	}

	stopCh = make(chan struct{})
	// close the connection
	go func() {
		<-stopCh
		conn.Close()
		cmd.Process.Kill()
		os.Remove(sock)
	}()
	return cards, stopCh, nil
}
