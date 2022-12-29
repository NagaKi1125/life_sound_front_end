import 'package:json_annotation/json_annotation.dart';
import '../../../api/converter/formatted_date_time_converter.dart';
part 'music_response.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MusicResponse {
  MusicResponse({
    this.id,
    this.authors,
    this.previewUrl,
    this.duration,
    this.name,
    this.spotifyId,
    this.year,
    this.url,
    this.category,
    this.thumbnail,
    this.updatedAt,
    this.createdAt,
  });

  @JsonKey(name: "_id")
  String? id;
  String? authors;
  @JsonKey(name: "preview_url")
  String? previewUrl;
  int? duration;
  String? name;
  String? spotifyId;
  int? year;
  String? url;
  String? category;
  String? thumbnail;
  @FormattedDateTimeConverter.optionalShortYearMonthDay
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @FormattedDateTimeConverter.optionalShortYearMonthDay
  @JsonKey(name: 'created_at')
  String? createdAt;

  factory MusicResponse.fromJson(Map<String, dynamic> json) =>
      _$MusicResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MusicResponseToJson(this);
}
