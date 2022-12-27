import 'package:injectable/injectable.dart';
import '../../../storage/auth_storage.dart';
import '../../../usecases/base/base_use_case.dart';

class StoreAccessTokenInput {
  final String accessToken;
  final String? userId;

  const StoreAccessTokenInput(
      {required this.accessToken,
      this.userId});
}

@Injectable()
class StoreAccessTokenUseCase extends UseCase<void, StoreAccessTokenInput> {
  final AuthStorage _authStorage;

  const StoreAccessTokenUseCase(
    this._authStorage,
  );

  @override
  Future<Result<void>> call(StoreAccessTokenInput params) async {
    try {
      return await _storeTokens(params);
    } catch (exception) {
      return Failed(UseCaseException(exception));
    }
  }

  Future<Result<void>> _storeTokens(StoreAccessTokenInput token) async {
    try {
      await _authStorage.clearAllStorage();
      await _authStorage.storeAccessToken(token.accessToken);
      if (token.userId != "null" ||
          token.userId != null ||
          token.userId!.isNotEmpty) {
        await _authStorage.storeUserId(token.userId!);
      }
      return Success(null);
    } catch (exception) {
      return Failed(UseCaseException(exception));
    }
  }
}
