import 'package:equatable/equatable.dart';
import 'package:life_sound/api/response/user_login_response.dart';

class User extends Equatable {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.level,
    required this.avatar,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String name;
  final String email;
  final int level;
  final String avatar;
  final String updatedAt;
  final String createdAt;

  factory User.fromUserLoginResponse(UserLoginResponse response) => User(
      id: response.id ?? '',
      name: response.name ?? '',
      email: response.email ?? '',
      level: response.level ?? 0,
      avatar: response.avatar ?? '',
      createdAt: response.createdAt ?? '',
      updatedAt: response.updatedAt ?? '');

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        email,
        level,
        avatar,
        createdAt,
        updatedAt,
      ];
}
