import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:life_sound/model/register.dart';
import 'package:life_sound/usecases/auth/register_use_case.dart';
import 'package:rxdart/rxdart.dart';
import '../../../ui/auth/register/register_account_view_state.dart';

import '../../../usecases/base/base_use_case.dart';

class RegisterAccountViewModel extends StateNotifier<RegisterAccountViewState> {
  final RegisterUseCase _registerUseCase;

  RegisterAccountViewModel({required RegisterUseCase registerUseCase})
      : _registerUseCase = registerUseCase,
        super(const RegisterAccountViewState.init());

  final BehaviorSubject<void> _registerAccountSuccessSubject =
      BehaviorSubject();

  Stream<void> get registerAccountSuccessStream =>
      _registerAccountSuccessSubject.stream;

  Future<void> registerAccount(
      {required String name,
      required String email,
      required String password}) async {
    state = const RegisterAccountViewState.loading();
    final result = await _registerUseCase
        .call(RegisterInput(name: name, email: email, password: password));

    if (result is Success<Register>) {
      _registerAccountSuccessSubject.add(null);
    }

    if (result is Failed<Register>) {
      _handleError(result);
    }
  }

  _handleError(Failed failedResult) {
    final error = failedResult.getErrorMessage();
    state = RegisterAccountViewState.error(error);
  }
}
