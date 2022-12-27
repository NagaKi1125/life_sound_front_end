import 'package:dio/dio.dart';
import 'package:life_sound/api/request/login_request.dart';
import 'package:life_sound/api/request/register_request.dart';
import 'package:life_sound/api/response/register_account_response.dart';
import 'package:life_sound/api/response/login_response.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @FormUrlEncoded()
  @POST('auth/login')
  Future<LoginResponse> login(@Body() LoginRequest request);

  @FormUrlEncoded()
  @POST('auth/register')
  Future<RegisterAccountResponse> register(@Body() RegisterRequest request);
}
