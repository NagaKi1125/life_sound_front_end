import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:life_sound/api/api_service.dart';
import 'package:life_sound/api/repository/music_repository.dart';
import 'package:life_sound/model/music.dart';
import '../../../storage/auth_storage.dart';
import '../../../usecases/base/base_use_case.dart';

@Injectable()
class GetMusicsUseCase extends NoParamsUseCase<List<Music>> {
  final MusicRepository _musicRepository;

  const GetMusicsUseCase(this._musicRepository);

  @override
  Future<Result<List<Music>>> call() async {
    try {
      final musics = await _musicRepository.getMusics();
      return Success(musics);
    } catch (exception) {
      return Failed(UseCaseException(exception));
    }
  }
}
