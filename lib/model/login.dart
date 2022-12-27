import 'package:equatable/equatable.dart';
import 'package:life_sound/api/response/login_response.dart';
import 'package:life_sound/model/user.dart';

class Login extends Equatable {
  const Login({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.user,
  });

  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final User user;
  

  factory Login.fromLoginResponse(LoginResponse response) => Login(
      accessToken: response.accessToken ?? '',
      tokenType: response.tokenType ?? '',
      expiresIn: response.expiresIn ?? 0,
      user: User.fromUserLoginResponse(response.user));

  @override
  List<Object?> get props => [
        accessToken,
        tokenType,
        expiresIn,
        user,
      ];
}
