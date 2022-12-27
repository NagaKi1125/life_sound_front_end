import 'package:life_sound/api/auth_service.dart';
import 'package:life_sound/api/exception/network_exceptions.dart';
import 'package:life_sound/api/request/login_request.dart';
import 'package:life_sound/api/request/register_request.dart';
import 'package:life_sound/model/login.dart';
import 'package:injectable/injectable.dart';
import 'package:life_sound/model/register.dart';

abstract class AuthRepository {
  Future<Login> login({required String email, required String password});

  Future<Register> register(
      {required String name, required String email, required String password});
}

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthService _authService;

  AuthRepositoryImpl(this._authService);

  @override
  Future<Login> login({required String email, required String password}) async {
    try {
      final loginRequest = LoginRequest(email: email, password: password);
      final response = await _authService.login(loginRequest);
      return Login.fromLoginResponse(response);
    } catch (exception) {
      throw NetworkExceptions.fromDioException(exception);
    }
  }

  @override
  Future<Register> register(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final registerRequest =
          RegisterRequest(name: name, email: email, password: password);
      final response = await _authService.register(registerRequest);
      return Register.fromRegisterResponse(response);
    } catch (exception) {
      throw NetworkExceptions.fromDioException(exception);
    }
  }
}
