import 'package:injectable/injectable.dart';
import '../../../storage/auth_storage.dart';
import '../../../usecases/base/base_use_case.dart';

@Injectable()
class GetAccessTokenFromStorageUseCase extends NoParamsUseCase<String> {
  final AuthStorage _authStorage;

  const GetAccessTokenFromStorageUseCase(this._authStorage);

  @override
  Future<Result<String>> call() async {
    try {
      final accessToken = await _authStorage.accessToken;
      return Success(accessToken ?? '');
    } catch (exception) {
      return Failed(UseCaseException(exception));
    }
  }
}
