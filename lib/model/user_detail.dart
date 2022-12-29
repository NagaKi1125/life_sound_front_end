import 'package:equatable/equatable.dart';
import 'package:life_sound/api/response/user_login_response.dart';
import 'package:life_sound/api/response/user_response.dart';

class UserDetail extends Equatable {
  UserDetail({
    required this.id,
    required this.name,
    required this.email,
    required this.avatar,
    required this.favoriteTrack,
    required this.followedAuthor,
    required this.albums,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String name;
  final String email;
  final String avatar;
  final int favoriteTrack;
  final int followedAuthor;
  final int albums;
  final String createdAt;
  final String updatedAt;

  factory UserDetail.fromUserResponse(UserResponse response) => UserDetail(
      id: response.id ?? '',
      name: response.name ?? '',
      email: response.email ?? '',
      avatar: response.avatar ?? '',
      favoriteTrack: response.favoriteTrack ?? 0,
      followedAuthor: response.followedAuthor ?? 0,
      albums: response.albums ?? 0,
      createdAt: response.createdAt ?? '',
      updatedAt: response.updatedAt ?? '');

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        email,
        favoriteTrack,
        followedAuthor,
        albums,
        avatar,
        createdAt,
        updatedAt,
      ];
}
