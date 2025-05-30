//
//  Generated code. Do not modify.
//  source: protos/cards_runner.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/struct.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Card extends $pb.GeneratedMessage {
  factory Card({
    $core.String? name,
    $1.Struct? in_2,
    $1.Struct? out,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (in_2 != null) {
      $result.in_2 = in_2;
    }
    if (out != null) {
      $result.out = out;
    }
    return $result;
  }
  Card._() : super();
  factory Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'pipeman'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$1.Struct>(2, _omitFieldNames ? '' : 'in', subBuilder: $1.Struct.create)
    ..aOM<$1.Struct>(3, _omitFieldNames ? '' : 'out', subBuilder: $1.Struct.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Card clone() => Card()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Card copyWith(void Function(Card) updates) => super.copyWith((message) => updates(message as Card)) as Card;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Card create() => Card._();
  Card createEmptyInstance() => create();
  static $pb.PbList<Card> createRepeated() => $pb.PbList<Card>();
  @$core.pragma('dart2js:noInline')
  static Card getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Card>(create);
  static Card? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.Struct get in_2 => $_getN(1);
  @$pb.TagNumber(2)
  set in_2($1.Struct v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIn_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearIn_2() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Struct ensureIn_2() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Struct get out => $_getN(2);
  @$pb.TagNumber(3)
  set out($1.Struct v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOut() => $_has(2);
  @$pb.TagNumber(3)
  void clearOut() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Struct ensureOut() => $_ensure(2);
}

class Cards extends $pb.GeneratedMessage {
  factory Cards({
    $core.Iterable<Card>? cards,
  }) {
    final $result = create();
    if (cards != null) {
      $result.cards.addAll(cards);
    }
    return $result;
  }
  Cards._() : super();
  factory Cards.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Cards.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Cards', package: const $pb.PackageName(_omitMessageNames ? '' : 'pipeman'), createEmptyInstance: create)
    ..pc<Card>(1, _omitFieldNames ? '' : 'cards', $pb.PbFieldType.PM, subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cards clone() => Cards()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cards copyWith(void Function(Cards) updates) => super.copyWith((message) => updates(message as Cards)) as Cards;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cards create() => Cards._();
  Cards createEmptyInstance() => create();
  static $pb.PbList<Cards> createRepeated() => $pb.PbList<Cards>();
  @$core.pragma('dart2js:noInline')
  static Cards getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cards>(create);
  static Cards? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Card> get cards => $_getList(0);
}

class EmptyReq extends $pb.GeneratedMessage {
  factory EmptyReq() => create();
  EmptyReq._() : super();
  factory EmptyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'pipeman'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmptyReq clone() => EmptyReq()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmptyReq copyWith(void Function(EmptyReq) updates) => super.copyWith((message) => updates(message as EmptyReq)) as EmptyReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyReq create() => EmptyReq._();
  EmptyReq createEmptyInstance() => create();
  static $pb.PbList<EmptyReq> createRepeated() => $pb.PbList<EmptyReq>();
  @$core.pragma('dart2js:noInline')
  static EmptyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyReq>(create);
  static EmptyReq? _defaultInstance;
}

class CardInputWithCardName extends $pb.GeneratedMessage {
  factory CardInputWithCardName({
    $core.String? card,
    $1.Struct? input,
    $1.Struct? output,
  }) {
    final $result = create();
    if (card != null) {
      $result.card = card;
    }
    if (input != null) {
      $result.input = input;
    }
    if (output != null) {
      $result.output = output;
    }
    return $result;
  }
  CardInputWithCardName._() : super();
  factory CardInputWithCardName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardInputWithCardName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardInputWithCardName', package: const $pb.PackageName(_omitMessageNames ? '' : 'pipeman'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'card')
    ..aOM<$1.Struct>(2, _omitFieldNames ? '' : 'input', subBuilder: $1.Struct.create)
    ..aOM<$1.Struct>(3, _omitFieldNames ? '' : 'output', subBuilder: $1.Struct.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardInputWithCardName clone() => CardInputWithCardName()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CardInputWithCardName copyWith(void Function(CardInputWithCardName) updates) => super.copyWith((message) => updates(message as CardInputWithCardName)) as CardInputWithCardName;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardInputWithCardName create() => CardInputWithCardName._();
  CardInputWithCardName createEmptyInstance() => create();
  static $pb.PbList<CardInputWithCardName> createRepeated() => $pb.PbList<CardInputWithCardName>();
  @$core.pragma('dart2js:noInline')
  static CardInputWithCardName getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardInputWithCardName>(create);
  static CardInputWithCardName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get card => $_getSZ(0);
  @$pb.TagNumber(1)
  set card($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCard() => $_has(0);
  @$pb.TagNumber(1)
  void clearCard() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.Struct get input => $_getN(1);
  @$pb.TagNumber(2)
  set input($1.Struct v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInput() => $_has(1);
  @$pb.TagNumber(2)
  void clearInput() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Struct ensureInput() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Struct get output => $_getN(2);
  @$pb.TagNumber(3)
  set output($1.Struct v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutput() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutput() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Struct ensureOutput() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
