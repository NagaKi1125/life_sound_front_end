import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../api/converter/formatted_date_time_converter.dart';
part 'user_response.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserResponse {
  UserResponse(
      {required this.id,
      required this.name,
      required this.email,
      required this.avatar,
      required this.favoriteTrack,
      required this.followedAuthor,
      required this.albums,
      required this.createdAt,
      required this.updatedAt});

  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;
  final String avatar;
  @JsonKey(name: 'favorite_track')
  final int favoriteTrack;
  @JsonKey(name: 'followed_author')
  final int followedAuthor;
  final int albums;
  @FormattedDateTimeConverter.optionalShortYearMonthDay
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @FormattedDateTimeConverter.optionalShortYearMonthDay
  @JsonKey(name: 'created_at')
  String? createdAt;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
