// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_details.freezed.dart';
part 'media_details.g.dart';

/// The response of the `GET /api/activity` endpoint.
///
/// It is defined using `freezed` and `json_serializable`.
@freezed
class MediaDetailsModel with _$MediaDetailsModel {
  factory MediaDetailsModel({
    required int id,
    String? overview,
    String? poster_path,
    String? original_title,
    double? vote_average,
    int? runtime,
    String? release_date,
    String? tagline,
    String? title,
    double? popularity,
    List<GenreModel>? genres,
  }) = _MediaDetailsModel;

  /// Convert a JSON object into an [MediaDetailsModel] instance.
  /// This enables type-safe reading of the API response.
  factory MediaDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MediaDetailsModelFromJson(json);
}

@freezed
class GenreModel with _$GenreModel {
  factory GenreModel({
    required int id,
    String? name,
  }) = _GenreModel;

  /// Convert a JSON object into an [GenreModel] instance.
  /// This enables type-safe reading of the API response.
  factory GenreModel.fromJson(Map<String, dynamic> json) =>
      _$GenreModelFromJson(json);
}
