// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_short.freezed.dart';
part 'media_short.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class MediaShortModel with _$MediaShortModel {
  factory MediaShortModel({
    required int id,
    String? original_title,
    String? overview,
    String? poster_path,
    String? title,
    String? name,
    double? vote_average,
  }) = _MediaShortModel;

  /// Convert a JSON object into an [MediaShortModel] instance.
  /// This enables type-safe reading of the API response.
  factory MediaShortModel.fromJson(Map<String, dynamic> json) =>
      _$MediaShortModelFromJson(json);
}
