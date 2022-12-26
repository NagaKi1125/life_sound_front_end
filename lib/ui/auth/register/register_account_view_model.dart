import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import '../../../ui/auth/register/register_account_view_state.dart';

import '../../../usecases/base/base_use_case.dart';


class RegisterAccountViewModel extends StateNotifier<RegisterAccountViewState> {


  RegisterAccountViewModel(
   )
      : super(const RegisterAccountViewState.init());


  final BehaviorSubject<String> _registerAccountSuccessSubject =
      BehaviorSubject();

  Stream<String> get registerAccountSuccessStream =>
      _registerAccountSuccessSubject.stream;


  Future<void> registerAccount(String tenantId) async {
    state = const RegisterAccountViewState.loading();



  }


  _handleError(Failed failedResult) {
    final error = failedResult.getErrorMessage();
    state = RegisterAccountViewState.error(error);
  }
}
