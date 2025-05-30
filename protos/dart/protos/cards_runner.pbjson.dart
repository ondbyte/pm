//
//  Generated code. Do not modify.
//  source: protos/cards_runner.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cardDescriptor instead')
const Card$json = {
  '1': 'Card',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'in', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'in'},
    {'1': 'out', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'out'},
  ],
};

/// Descriptor for `Card`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDescriptor = $convert.base64Decode(
    'CgRDYXJkEhIKBG5hbWUYASABKAlSBG5hbWUSJwoCaW4YAiABKAsyFy5nb29nbGUucHJvdG9idW'
    'YuU3RydWN0UgJpbhIpCgNvdXQYAyABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgNvdXQ=');

@$core.Deprecated('Use cardsDescriptor instead')
const Cards$json = {
  '1': 'Cards',
  '2': [
    {'1': 'cards', '3': 1, '4': 3, '5': 11, '6': '.pipeman.Card', '10': 'cards'},
  ],
};

/// Descriptor for `Cards`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardsDescriptor = $convert.base64Decode(
    'CgVDYXJkcxIjCgVjYXJkcxgBIAMoCzINLnBpcGVtYW4uQ2FyZFIFY2FyZHM=');

@$core.Deprecated('Use emptyReqDescriptor instead')
const EmptyReq$json = {
  '1': 'EmptyReq',
};

/// Descriptor for `EmptyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyReqDescriptor = $convert.base64Decode(
    'CghFbXB0eVJlcQ==');

@$core.Deprecated('Use cardInputWithCardNameDescriptor instead')
const CardInputWithCardName$json = {
  '1': 'CardInputWithCardName',
  '2': [
    {'1': 'card', '3': 1, '4': 1, '5': 9, '10': 'card'},
    {'1': 'input', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'input'},
    {'1': 'output', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'output'},
  ],
};

/// Descriptor for `CardInputWithCardName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardInputWithCardNameDescriptor = $convert.base64Decode(
    'ChVDYXJkSW5wdXRXaXRoQ2FyZE5hbWUSEgoEY2FyZBgBIAEoCVIEY2FyZBItCgVpbnB1dBgCIA'
    'EoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBWlucHV0Ei8KBm91dHB1dBgDIAEoCzIXLmdv'
    'b2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBm91dHB1dA==');

