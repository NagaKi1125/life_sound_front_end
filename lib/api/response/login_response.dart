import 'package:json_annotation/json_annotation.dart';
import 'user_login_response.dart';

part 'login_response.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginResponse {
  LoginResponse({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    required this.user,
  });

  String? accessToken;
  @JsonKey(name: 'token_type')
  String? tokenType;
  @JsonKey(name: 'expires_in')
  int? expiresIn;
  final UserLoginResponse user;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
