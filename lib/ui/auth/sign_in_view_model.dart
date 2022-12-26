import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import '../../../extensions/string_ext.dart';
import '../../../ui/auth/sign_in_view_state.dart';
import '../../../usecases/base/base_use_case.dart';

class SignInViewModel extends StateNotifier<SignInViewState> {

  SignInViewModel()
      : super(const SignInViewState.init());


  final PublishSubject<void> _navigateToHomeSubject = PublishSubject();

  Stream<void> get navigateToHomeStream => _navigateToHomeSubject;


  Future<void> signIn() async {
    state = const SignInViewState.loading();


  }


  _handleError(Failed failedResult) {
    final error = failedResult.getErrorMessage();
    state = SignInViewState.error(error);
  }
}
