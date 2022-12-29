import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../ui/startup/start_up_view_state.dart';
import '../../../usecases/auth/get_login_state_use_case.dart';
import '../../../usecases/base/base_use_case.dart';

class StartUpViewModel extends StateNotifier<StartUpViewState> {
  final GetLoginStateUseCase _getLoginStateUseCase;

  StartUpViewModel(this._getLoginStateUseCase)
      : super(const StartUpViewState.checkLoggedIn());

  checkTokenExisted() async {
    final result = await _getLoginStateUseCase.call();
    state = StartUpViewState.success(
        result is Success<bool> && result.value == true);
  }
}
