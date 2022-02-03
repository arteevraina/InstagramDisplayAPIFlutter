// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'insta_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InstaMedia _$InstaMediaFromJson(Map<String, dynamic> json) {
  return _InstaMedia.fromJson(json);
}

/// @nodoc
class _$InstaMediaTearOff {
  const _$InstaMediaTearOff();

  _InstaMedia call(
      {required String id,
      required String media_type,
      required String media_url,
      required String username,
      required String timestamp}) {
    return _InstaMedia(
      id: id,
      media_type: media_type,
      media_url: media_url,
      username: username,
      timestamp: timestamp,
    );
  }

  InstaMedia fromJson(Map<String, Object?> json) {
    return InstaMedia.fromJson(json);
  }
}

/// @nodoc
const $InstaMedia = _$InstaMediaTearOff();

/// @nodoc
mixin _$InstaMedia {
  String get id => throw _privateConstructorUsedError;
  String get media_type => throw _privateConstructorUsedError;
  String get media_url => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstaMediaCopyWith<InstaMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstaMediaCopyWith<$Res> {
  factory $InstaMediaCopyWith(
          InstaMedia value, $Res Function(InstaMedia) then) =
      _$InstaMediaCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String media_type,
      String media_url,
      String username,
      String timestamp});
}

/// @nodoc
class _$InstaMediaCopyWithImpl<$Res> implements $InstaMediaCopyWith<$Res> {
  _$InstaMediaCopyWithImpl(this._value, this._then);

  final InstaMedia _value;
  // ignore: unused_field
  final $Res Function(InstaMedia) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? media_type = freezed,
    Object? media_url = freezed,
    Object? username = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      media_type: media_type == freezed
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
      media_url: media_url == freezed
          ? _value.media_url
          : media_url // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InstaMediaCopyWith<$Res> implements $InstaMediaCopyWith<$Res> {
  factory _$InstaMediaCopyWith(
          _InstaMedia value, $Res Function(_InstaMedia) then) =
      __$InstaMediaCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String media_type,
      String media_url,
      String username,
      String timestamp});
}

/// @nodoc
class __$InstaMediaCopyWithImpl<$Res> extends _$InstaMediaCopyWithImpl<$Res>
    implements _$InstaMediaCopyWith<$Res> {
  __$InstaMediaCopyWithImpl(
      _InstaMedia _value, $Res Function(_InstaMedia) _then)
      : super(_value, (v) => _then(v as _InstaMedia));

  @override
  _InstaMedia get _value => super._value as _InstaMedia;

  @override
  $Res call({
    Object? id = freezed,
    Object? media_type = freezed,
    Object? media_url = freezed,
    Object? username = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_InstaMedia(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      media_type: media_type == freezed
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
      media_url: media_url == freezed
          ? _value.media_url
          : media_url // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InstaMedia extends _InstaMedia {
  const _$_InstaMedia(
      {required this.id,
      required this.media_type,
      required this.media_url,
      required this.username,
      required this.timestamp})
      : super._();

  factory _$_InstaMedia.fromJson(Map<String, dynamic> json) =>
      _$$_InstaMediaFromJson(json);

  @override
  final String id;
  @override
  final String media_type;
  @override
  final String media_url;
  @override
  final String username;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'InstaMedia(id: $id, media_type: $media_type, media_url: $media_url, username: $username, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InstaMedia &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.media_type, media_type) &&
            const DeepCollectionEquality().equals(other.media_url, media_url) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(media_type),
      const DeepCollectionEquality().hash(media_url),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  _$InstaMediaCopyWith<_InstaMedia> get copyWith =>
      __$InstaMediaCopyWithImpl<_InstaMedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InstaMediaToJson(this);
  }
}

abstract class _InstaMedia extends InstaMedia {
  const factory _InstaMedia(
      {required String id,
      required String media_type,
      required String media_url,
      required String username,
      required String timestamp}) = _$_InstaMedia;
  const _InstaMedia._() : super._();

  factory _InstaMedia.fromJson(Map<String, dynamic> json) =
      _$_InstaMedia.fromJson;

  @override
  String get id;
  @override
  String get media_type;
  @override
  String get media_url;
  @override
  String get username;
  @override
  String get timestamp;
  @override
  @JsonKey(ignore: true)
  _$InstaMediaCopyWith<_InstaMedia> get copyWith =>
      throw _privateConstructorUsedError;
}
