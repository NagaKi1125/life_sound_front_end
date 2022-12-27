import 'package:injectable/injectable.dart';
import 'package:life_sound/api/repository/auth_repository.dart';
import 'package:life_sound/model/login.dart';
import 'package:life_sound/usecases/base/base_use_case.dart';

class LoginInput {
  String email;
  String password;

  LoginInput({required this.email, required this.password});
}

@Injectable()
class LoginUseCase extends UseCase<Login, LoginInput> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Result<Login>> call(LoginInput params) async {
    try {
      final result = await _authRepository.login(
          email: params.email, password: params.password);
      return Success(result);
    } catch (exception) {
      return Failed(UseCaseException(exception));
    }
  }
}
