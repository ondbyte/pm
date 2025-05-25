package pipeman

import (
	"context"
	"fmt"
	"net"
	"os"

	protos "github.com/ondbyte/pm/protos/go"
	"github.com/ondbyte/typed_sync"
	"google.golang.org/grpc"
	"google.golang.org/protobuf/types/known/structpb"
)

// takes your cards and runs them as single go program,
// you should call this from your main, no other requirements
func RunCards(collectionName string, cards ...Card) error {
	s := grpc.NewServer()
	prgm := &cardsRunner{collectionName: collectionName, cards: &typed_sync.SyncMap[string, *card]{}}
	for _, c := range cards {
		card := c.(*externalCard).card
		prgm.cards.Store(card.Name, &card)
	}
	protos.RegisterCardsRunnerServer(s, prgm)
	socketPath, ok := os.LookupEnv(udsSockEnvKey)
	if !ok {
		return fmt.Errorf("sock not set")
	}
	lis, err := net.Listen("unix", socketPath)
	if err != nil {
		return fmt.Errorf("failed to listen: %v", err)
	}
	return s.Serve(lis)
}

type cardsRunner struct {
	collectionName string
	cards          *typed_sync.SyncMap[string, *card]
	protos.UnsafeCardsRunnerServer
}

// GetSupportedCards implements protos.ProgramServer.
func (s *cardsRunner) GetSupportedCards(context.Context, *protos.EmptyReq) (rc *protos.Cards, err error) {
	rc = &protos.Cards{}

	s.cards.Range(func(key string, card *card) bool {
		inF := map[string]*structpb.Value{}
		for k, v := range card.In {
			inF[k], err = structpb.NewValue(v)
			if err != nil {
				err = fmt.Errorf("err whil creating new structpb val %v", err)
				return false
			}
		}
		outF := map[string]*structpb.Value{}
		for k, v := range card.Out {
			inF[k], err = structpb.NewValue(v)
			if err != nil {
				err = fmt.Errorf("err whil creating new structpb val %v", err)
				return false
			}
		}
		rc.Cards = append(rc.Cards, &protos.Card{
			Name: card.Name,
			In: &structpb.Struct{
				Fields: inF,
			},
			Out: &structpb.Struct{
				Fields: outF,
			},
		})
		return true
	})

	if err != nil {
		return nil, err
	}
	return rc, nil
}

// RunCard implements protos.ProgramServer.
func (s *cardsRunner) RunCard(ctx context.Context, ciwcn *protos.CardInputWithCardName) (*structpb.Struct, error) {
	card, ok := s.cards.Load(ciwcn.Card)
	if !ok {
		return nil, fmt.Errorf("card %v not found", ciwcn.Card)
	}
	out := DeepCopyMap(card.Out)
	err := card.run(ciwcn.Input.AsMap(), out)
	if err != nil {
		return nil, fmt.Errorf("err while running card %v", err)
	}
	ns, err := structpb.NewStruct(out)
	if err != nil {
		return nil, fmt.Errorf("err while creating new struct %v", err)
	}
	return ns, nil
}
