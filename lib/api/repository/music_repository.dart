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

abstract class MusicRepository {


  Future<List<Music>> getMusics();

}

@Singleton(as: MusicRepository)
class MusicRepositoryImpl extends MusicRepository {
  final ApiService _apiService;

  MusicRepositoryImpl(this._apiService);

  @override
  Future<List<Music>> getMusics() async {
    try {
      final musics = await _apiService.getMusics();
      return musics.map((e) => Music.fromMusicResponse(e)).toList();
    } catch (e) {
      throw NetworkExceptions.fromDioException(e);
    }
  }
}
