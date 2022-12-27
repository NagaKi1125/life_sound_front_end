import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginRequest {
  LoginRequest({
    required this.email,
    required this.password,
  });

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
