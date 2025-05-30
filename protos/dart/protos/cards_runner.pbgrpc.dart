//
//  Generated code. Do not modify.
//  source: protos/cards_runner.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/struct.pb.dart' as $1;
import 'cards_runner.pb.dart' as $0;

export 'cards_runner.pb.dart';

@$pb.GrpcServiceName('pipeman.CardsRunner')
class CardsRunnerClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$getSupportedCards = $grpc.ClientMethod<$0.EmptyReq, $0.Cards>(
      '/pipeman.CardsRunner/GetSupportedCards',
      ($0.EmptyReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Cards.fromBuffer(value));
  static final _$runCard = $grpc.ClientMethod<$0.CardInputWithCardName, $1.Struct>(
      '/pipeman.CardsRunner/RunCard',
      ($0.CardInputWithCardName value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Struct.fromBuffer(value));

  CardsRunnerClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.Cards> getSupportedCards($0.EmptyReq request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSupportedCards, request, options: options);
  }

  $grpc.ResponseFuture<$1.Struct> runCard($0.CardInputWithCardName request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$runCard, request, options: options);
  }
}

@$pb.GrpcServiceName('pipeman.CardsRunner')
abstract class CardsRunnerServiceBase extends $grpc.Service {
  $core.String get $name => 'pipeman.CardsRunner';

  CardsRunnerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyReq, $0.Cards>(
        'GetSupportedCards',
        getSupportedCards_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyReq.fromBuffer(value),
        ($0.Cards value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CardInputWithCardName, $1.Struct>(
        'RunCard',
        runCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardInputWithCardName.fromBuffer(value),
        ($1.Struct value) => value.writeToBuffer()));
  }

  $async.Future<$0.Cards> getSupportedCards_Pre($grpc.ServiceCall $call, $async.Future<$0.EmptyReq> $request) async {
    return getSupportedCards($call, await $request);
  }

  $async.Future<$1.Struct> runCard_Pre($grpc.ServiceCall $call, $async.Future<$0.CardInputWithCardName> $request) async {
    return runCard($call, await $request);
  }

  $async.Future<$0.Cards> getSupportedCards($grpc.ServiceCall call, $0.EmptyReq request);
  $async.Future<$1.Struct> runCard($grpc.ServiceCall call, $0.CardInputWithCardName request);
}
