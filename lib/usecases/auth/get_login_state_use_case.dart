import 'dart:developer';

import 'package:injectable/injectable.dart';
import '../../../storage/auth_storage.dart';
import '../../../usecases/base/base_use_case.dart';

@Injectable()
class GetLoginStateUseCase extends NoParamsUseCase<bool> {
  final AuthStorage _authStorage;

  const GetLoginStateUseCase(this._authStorage);

  @override
  Future<Result<bool>> call() async {
    try {
      final accessToken = await _authStorage.accessToken;
      log(accessToken.toString());
      return Success(accessToken != null && accessToken.isNotEmpty);
    } catch (exception) {
      return Success(false);
    }
  }
}
