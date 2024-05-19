// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_short.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaShortModelImpl _$$MediaShortModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MediaShortModelImpl(
      id: (json['id'] as num).toInt(),
      original_title: json['original_title'] as String?,
      overview: json['overview'] as String?,
      poster_path: json['poster_path'] as String?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      vote_average: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MediaShortModelImplToJson(
        _$MediaShortModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'poster_path': instance.poster_path,
      'title': instance.title,
      'name': instance.name,
      'vote_average': instance.vote_average,
    };
