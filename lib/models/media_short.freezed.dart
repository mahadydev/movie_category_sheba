// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_short.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaShortModel _$MediaShortModelFromJson(Map<String, dynamic> json) {
  return _MediaShortModel.fromJson(json);
}

/// @nodoc
mixin _$MediaShortModel {
  int get id => throw _privateConstructorUsedError;
  String? get original_title => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  String? get poster_path => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get vote_average => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaShortModelCopyWith<MediaShortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaShortModelCopyWith<$Res> {
  factory $MediaShortModelCopyWith(
          MediaShortModel value, $Res Function(MediaShortModel) then) =
      _$MediaShortModelCopyWithImpl<$Res, MediaShortModel>;
  @useResult
  $Res call(
      {int id,
      String? original_title,
      String? overview,
      String? poster_path,
      String? title,
      String? name,
      double? vote_average});
}

/// @nodoc
class _$MediaShortModelCopyWithImpl<$Res, $Val extends MediaShortModel>
    implements $MediaShortModelCopyWith<$Res> {
  _$MediaShortModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? poster_path = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? vote_average = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      original_title: freezed == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vote_average: freezed == vote_average
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaShortModelImplCopyWith<$Res>
    implements $MediaShortModelCopyWith<$Res> {
  factory _$$MediaShortModelImplCopyWith(_$MediaShortModelImpl value,
          $Res Function(_$MediaShortModelImpl) then) =
      __$$MediaShortModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? original_title,
      String? overview,
      String? poster_path,
      String? title,
      String? name,
      double? vote_average});
}

/// @nodoc
class __$$MediaShortModelImplCopyWithImpl<$Res>
    extends _$MediaShortModelCopyWithImpl<$Res, _$MediaShortModelImpl>
    implements _$$MediaShortModelImplCopyWith<$Res> {
  __$$MediaShortModelImplCopyWithImpl(
      _$MediaShortModelImpl _value, $Res Function(_$MediaShortModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? poster_path = freezed,
    Object? title = freezed,
    Object? name = freezed,
    Object? vote_average = freezed,
  }) {
    return _then(_$MediaShortModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      original_title: freezed == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vote_average: freezed == vote_average
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaShortModelImpl implements _MediaShortModel {
  _$MediaShortModelImpl(
      {required this.id,
      this.original_title,
      this.overview,
      this.poster_path,
      this.title,
      this.name,
      this.vote_average});

  factory _$MediaShortModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaShortModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? original_title;
  @override
  final String? overview;
  @override
  final String? poster_path;
  @override
  final String? title;
  @override
  final String? name;
  @override
  final double? vote_average;

  @override
  String toString() {
    return 'MediaShortModel(id: $id, original_title: $original_title, overview: $overview, poster_path: $poster_path, title: $title, name: $name, vote_average: $vote_average)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaShortModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.original_title, original_title) ||
                other.original_title == original_title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.poster_path, poster_path) ||
                other.poster_path == poster_path) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vote_average, vote_average) ||
                other.vote_average == vote_average));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, original_title, overview,
      poster_path, title, name, vote_average);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaShortModelImplCopyWith<_$MediaShortModelImpl> get copyWith =>
      __$$MediaShortModelImplCopyWithImpl<_$MediaShortModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaShortModelImplToJson(
      this,
    );
  }
}

abstract class _MediaShortModel implements MediaShortModel {
  factory _MediaShortModel(
      {required final int id,
      final String? original_title,
      final String? overview,
      final String? poster_path,
      final String? title,
      final String? name,
      final double? vote_average}) = _$MediaShortModelImpl;

  factory _MediaShortModel.fromJson(Map<String, dynamic> json) =
      _$MediaShortModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get original_title;
  @override
  String? get overview;
  @override
  String? get poster_path;
  @override
  String? get title;
  @override
  String? get name;
  @override
  double? get vote_average;
  @override
  @JsonKey(ignore: true)
  _$$MediaShortModelImplCopyWith<_$MediaShortModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
