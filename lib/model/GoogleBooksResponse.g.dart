// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GoogleBooksResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GoogleBooksResponse _$_$_GoogleBooksResponseFromJson(
    Map<String, dynamic> json) {
  return _$_GoogleBooksResponse(
    kind: json['kind'] as String,
    totalItem: json['totalItem'] as int,
    items: json['items'] as List,
  );
}

Map<String, dynamic> _$_$_GoogleBooksResponseToJson(
        _$_GoogleBooksResponse instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'totalItem': instance.totalItem,
      'items': instance.items,
    };