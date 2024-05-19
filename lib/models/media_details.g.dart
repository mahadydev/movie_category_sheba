// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaDetailsModelImpl _$$MediaDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      overview: json['overview'] as String?,
      poster_path: json['poster_path'] as String?,
      original_title: json['original_title'] as String?,
      vote_average: (json['vote_average'] as num?)?.toDouble(),
      runtime: (json['runtime'] as num?)?.toInt(),
      release_date: json['release_date'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MediaDetailsModelImplToJson(
        _$MediaDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'overview': instance.overview,
      'poster_path': instance.poster_path,
      'original_title': instance.original_title,
      'vote_average': instance.vote_average,
      'runtime': instance.runtime,
      'release_date': instance.release_date,
      'tagline': instance.tagline,
      'title': instance.title,
      'popularity': instance.popularity,
      'genres': instance.genres,
    };

_$GenreModelImpl _$$GenreModelImplFromJson(Map<String, dynamic> json) =>
    _$GenreModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$GenreModelImplToJson(_$GenreModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
