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

@$core.Deprecated('Use portDescriptor instead')
const Port$json = {
  '1': 'Port',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Value', '10': 'type'},
  ],
};

/// Descriptor for `Port`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List portDescriptor = $convert.base64Decode(
    'CgRQb3J0EhIKBG5hbWUYASABKAlSBG5hbWUSKgoEdHlwZRgDIAEoCzIWLmdvb2dsZS5wcm90b2'
    'J1Zi5WYWx1ZVIEdHlwZQ==');

@$core.Deprecated('Use cardDescriptor instead')
const Card$json = {
  '1': 'Card',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'in', '3': 2, '4': 3, '5': 11, '6': '.pipeman.Card.InEntry', '10': 'in'},
    {'1': 'out', '3': 3, '4': 3, '5': 11, '6': '.pipeman.Card.OutEntry', '10': 'out'},
  ],
  '3': [Card_InEntry$json, Card_OutEntry$json],
};

@$core.Deprecated('Use cardDescriptor instead')
const Card_InEntry$json = {
  '1': 'InEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.pipeman.Port', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use cardDescriptor instead')
const Card_OutEntry$json = {
  '1': 'OutEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.pipeman.Port', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Card`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDescriptor = $convert.base64Decode(
    'CgRDYXJkEhIKBG5hbWUYASABKAlSBG5hbWUSJQoCaW4YAiADKAsyFS5waXBlbWFuLkNhcmQuSW'
    '5FbnRyeVICaW4SKAoDb3V0GAMgAygLMhYucGlwZW1hbi5DYXJkLk91dEVudHJ5UgNvdXQaRAoH'
    'SW5FbnRyeRIQCgNrZXkYASABKAlSA2tleRIjCgV2YWx1ZRgCIAEoCzINLnBpcGVtYW4uUG9ydF'
    'IFdmFsdWU6AjgBGkUKCE91dEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EiMKBXZhbHVlGAIgASgL'
    'Mg0ucGlwZW1hbi5Qb3J0UgV2YWx1ZToCOAE=');

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
    {'1': 'input', '3': 2, '4': 3, '5': 11, '6': '.pipeman.CardInputWithCardName.InputEntry', '10': 'input'},
    {'1': 'output', '3': 3, '4': 3, '5': 11, '6': '.pipeman.CardInputWithCardName.OutputEntry', '10': 'output'},
  ],
  '3': [CardInputWithCardName_InputEntry$json, CardInputWithCardName_OutputEntry$json],
};

@$core.Deprecated('Use cardInputWithCardNameDescriptor instead')
const CardInputWithCardName_InputEntry$json = {
  '1': 'InputEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.pipeman.Port', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use cardInputWithCardNameDescriptor instead')
const CardInputWithCardName_OutputEntry$json = {
  '1': 'OutputEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.pipeman.Port', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CardInputWithCardName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardInputWithCardNameDescriptor = $convert.base64Decode(
    'ChVDYXJkSW5wdXRXaXRoQ2FyZE5hbWUSEgoEY2FyZBgBIAEoCVIEY2FyZBI/CgVpbnB1dBgCIA'
    'MoCzIpLnBpcGVtYW4uQ2FyZElucHV0V2l0aENhcmROYW1lLklucHV0RW50cnlSBWlucHV0EkIK'
    'Bm91dHB1dBgDIAMoCzIqLnBpcGVtYW4uQ2FyZElucHV0V2l0aENhcmROYW1lLk91dHB1dEVudH'
    'J5UgZvdXRwdXQaRwoKSW5wdXRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIjCgV2YWx1ZRgCIAEo'
    'CzINLnBpcGVtYW4uUG9ydFIFdmFsdWU6AjgBGkgKC091dHB1dEVudHJ5EhAKA2tleRgBIAEoCV'
    'IDa2V5EiMKBXZhbHVlGAIgASgLMg0ucGlwZW1hbi5Qb3J0UgV2YWx1ZToCOAE=');

