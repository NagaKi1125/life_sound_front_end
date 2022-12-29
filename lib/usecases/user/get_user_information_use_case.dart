import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:life_sound/api/api_service.dart';
import 'package:life_sound/api/repository/music_repository.dart';
import 'package:life_sound/api/repository/user_repositoy.dart';
import 'package:life_sound/model/music.dart';
import 'package:life_sound/model/user_detail.dart';
import '../../../storage/auth_storage.dart';
import '../../../usecases/base/base_use_case.dart';

@Injectable()
class GetUserInformationUseCase extends NoParamsUseCase<UserDetail> {
  final UserRepository _userRepository;

  const GetUserInformationUseCase(this._userRepository);

  @override
  Future<Result<UserDetail>> call() async {
    try {
      final user = await _userRepository.getUserDetails();
      return Success(user);
    } catch (exception) {
      return Failed(UseCaseException(exception));
    }
  }
}
