// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insta_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstaMedia _$$_InstaMediaFromJson(Map<String, dynamic> json) =>
    _$_InstaMedia(
      id: json['id'] as String,
      media_type: json['media_type'] as String,
      media_url: json['media_url'] as String,
      username: json['username'] as String,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$_InstaMediaToJson(_$_InstaMedia instance) =>
    <String, dynamic>{
      'id': instance.id,
      'media_type': instance.media_type,
      'media_url': instance.media_url,
      'username': instance.username,
      'timestamp': instance.timestamp,
    };
