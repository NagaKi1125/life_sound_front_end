
import 'package:json_annotation/json_annotation.dart';
import 'package:life_sound/api/response/user_login_response.dart';

part 'register_account_response.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RegisterAccountResponse {
  final String message;
  final UserLoginResponse user;

  RegisterAccountResponse({required this.message, required this.user});

  factory RegisterAccountResponse.fromJson(Map<String, dynamic> json) => _$RegisterAccountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterAccountResponseToJson(this);
}
