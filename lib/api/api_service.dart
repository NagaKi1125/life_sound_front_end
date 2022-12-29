import 'package:dio/dio.dart';
import 'package:life_sound/api/response/music_response.dart';
import 'package:life_sound/api/response/user_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // music

  @GET('musics')
  Future<List<MusicResponse>> getMusics();

  // user
  @GET('auth/user-profile')
  Future<UserResponse> getUserProfle();

}
