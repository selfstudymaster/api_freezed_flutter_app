import 'package:api_freezed_flutter_app/model/GoogleBookVolumeInfoResponse.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'GoogleBookResponse.freezed.dart';
part 'GoogleBookResponse.g.dart';

@freezed
abstract class GoogleBookResponse with _$GoogleBookResponse {
  const factory GoogleBookResponse(
      {String kind,
      String id,
      String etag,
      GoogleBookVolumeInfoResponse volumeInfo,
      int totalItems}) = _GoogleBookResponse;

  factory GoogleBookResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleBookResponseFromJson(json);
}
