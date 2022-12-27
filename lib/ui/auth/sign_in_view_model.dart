import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:life_sound/model/login.dart';
import 'package:life_sound/usecases/auth/get_login_state_use_case.dart';
import 'package:life_sound/usecases/auth/login_use_case.dart';
import 'package:life_sound/usecases/auth/store_access_token_use_case.dart';
import 'package:rxdart/rxdart.dart';
import '../../../extensions/string_ext.dart';
import '../../../ui/auth/sign_in_view_state.dart';
import '../../../usecases/base/base_use_case.dart';

class SignInViewModel extends StateNotifier<SignInViewState> {
  SignInViewModel(
      {required LoginUseCase loginUseCase,
      required StoreAccessTokenUseCase storeAccessTokenUseCase,
      required GetLoginStateUseCase getLoginStateUseCase})
      : _loginUseCase = loginUseCase,
        _storeAccessTokenUseCase = storeAccessTokenUseCase,
        _getLoginStateUseCase = getLoginStateUseCase,
        super(const SignInViewState.init());

  final LoginUseCase _loginUseCase;
  final StoreAccessTokenUseCase _storeAccessTokenUseCase;
  final GetLoginStateUseCase _getLoginStateUseCase;

  final BehaviorSubject<bool> _loadingSubject = BehaviorSubject();

  Stream<bool> get loadingStream => _loadingSubject.stream;

  final PublishSubject<void> _navigateToHomeSubject = PublishSubject();

  Stream<void> get navigateToHomeStream => _navigateToHomeSubject;

  final PublishSubject<bool> _checkLoginStateSubject = PublishSubject();

  Stream<bool> get checkLoginStateStream => _checkLoginStateSubject;

  Future<void> checkLoginState() async {
    _loadingSubject.add(true);
    Future.delayed(const Duration(seconds: 2));
    final result = await _getLoginStateUseCase.call();

    _loadingSubject.add(false);
    if (result is Success<bool>) {
      _checkLoginStateSubject.add(result.value);
      return;
    }

    if (result is Failed<bool>) {
      _checkLoginStateSubject.add(false);
      return;
    }
  }

  Future<void> signIn(String email, String password) async {
    state = const SignInViewState.loading();
    final result =
        await _loginUseCase.call(LoginInput(email: email, password: password));

    if (result is Success<Login>) {
      storeToken(result.value.accessToken, result.value.user.id);
      _navigateToHomeSubject.add(null);
    }

    if (result is Failed<Login>) {
      _handleError(result);
    }
  }

  _handleError(Failed failedResult) {
    final error = failedResult.getErrorMessage();
    state = SignInViewState.error(error);
  }

  Future<void> storeToken(String token, String userId) async {
    final result = await _storeAccessTokenUseCase
        .call(StoreAccessTokenInput(accessToken: token, userId: userId));
    if (result is Success) {
      state = const SignInViewState.success();
      _navigateToHomeSubject.add(null);
    } else {
      _handleError(result as Failed);
    }
  }
}
