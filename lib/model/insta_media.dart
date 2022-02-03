import 'package:freezed_annotation/freezed_annotation.dart';

part 'insta_media.g.dart';
part 'insta_media.freezed.dart';

@freezed
class InstaMedia with _$InstaMedia {
  const InstaMedia._();
  const factory InstaMedia({
    required String id,
    required String media_type,
    required String media_url,
    required String username,
    required String timestamp,
  }) = _InstaMedia;

  factory InstaMedia.fromJson(Map<String, dynamic> json) =>
      _$InstaMediaFromJson(json);
}
