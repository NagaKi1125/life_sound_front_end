import 'package:json_annotation/json_annotation.dart';
import '../../../api/converter/formatted_date_time_converter.dart';

part 'user_login_response.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserLoginResponse {
  UserLoginResponse({
    this.id,
    this.email,
    this.name,
    this.level,
    this.avatar,
    this.updatedAt,
    this.createdAt,
  });

  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? email;
  int? level;
  String? avatar;
  @FormattedDateTimeConverter.optionalShortYearMonthDay
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @FormattedDateTimeConverter.optionalShortYearMonthDay
  @JsonKey(name: 'created_at')
  String? createdAt;

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserLoginResponseToJson(this);
}
