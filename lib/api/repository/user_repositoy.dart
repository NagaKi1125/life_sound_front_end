import 'package:life_sound/api/api_service.dart';
import 'package:life_sound/api/auth_service.dart';
import 'package:life_sound/api/exception/network_exceptions.dart';
import 'package:life_sound/api/request/login_request.dart';
import 'package:life_sound/api/request/register_request.dart';
import 'package:life_sound/model/login.dart';
import 'package:injectable/injectable.dart';
import 'package:life_sound/model/music.dart';
import 'package:life_sound/model/register.dart';
import 'package:life_sound/model/user_detail.dart';

abstract class UserRepository {
  Future<UserDetail> getUserDetails();
}

@Singleton(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  final ApiService _apiService;

  UserRepositoryImpl(this._apiService);

  @override
  Future<UserDetail> getUserDetails() async {
    try {
      final user = await _apiService.getUserProfle();
      return UserDetail.fromUserResponse(user);
    } catch (e) {
      throw NetworkExceptions.fromDioException(e);
    }
  }
}
