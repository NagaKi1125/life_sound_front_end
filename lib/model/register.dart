import 'package:equatable/equatable.dart';
import 'package:life_sound/api/response/register_account_response.dart';
import 'package:life_sound/model/user.dart';

class Register extends Equatable {
  const Register({
    required this.message,
    required this.user,
  });

  final String message;
  final User user;

  factory Register.fromRegisterResponse(RegisterAccountResponse response) =>
      Register(
          message: response.message,
          user: User.fromUserLoginResponse(response.user));

  @override
  List<Object?> get props => [
        message,
        user,
      ];
}
