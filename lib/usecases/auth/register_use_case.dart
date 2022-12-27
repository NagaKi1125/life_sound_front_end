import 'package:injectable/injectable.dart';
import 'package:life_sound/api/repository/auth_repository.dart';
import 'package:life_sound/model/register.dart';
import 'package:life_sound/usecases/base/base_use_case.dart';

class RegisterInput {
  String name;
  String email;
  String password;

  RegisterInput(
      {required this.name, required this.email, required this.password});
}

@Injectable()
class RegisterUseCase extends UseCase<Register, RegisterInput> {
  final AuthRepository _authRepository;

  RegisterUseCase(this._authRepository);

  @override
  Future<Result<Register>> call(RegisterInput params) async {
    try {
      final result = await _authRepository.register(
          name: params.name, email: params.email, password: params.password);
      return Success(result);
    } catch (exception) {
      return Failed(UseCaseException(exception));
    }
  }
}
