// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';
part 'cast.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class CastModel with _$CastModel {
  factory CastModel({
    required int id,
    String? name,
    String? character,
    String? profile_path,
  }) = _CastModel;

  /// Convert a JSON object into an [CastModel] instance.
  /// This enables type-safe reading of the API response.
  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);
}
