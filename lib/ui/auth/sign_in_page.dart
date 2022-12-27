import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sound/router/app_router.dart';
import 'package:life_sound/ui/auth/register/register_account_page.dart';
import 'package:life_sound/usecases/auth/get_login_state_use_case.dart';
import 'package:life_sound/usecases/auth/login_use_case.dart';
import 'package:life_sound/usecases/auth/store_access_token_use_case.dart';
import 'package:life_sound/utils/custom_toast.dart';
import 'package:life_sound/widget/already_have_an_account_acheck.dart';
import 'package:life_sound/widget/background.dart';
import 'package:life_sound/widget/loading_indicator.dart';
import 'package:life_sound/widget/login_screen_top_image.dart';
import 'package:life_sound/widget/responsive.dart';

import 'sign_in_view_model.dart';
import 'sign_in_view_state.dart';

import '../../di/di.dart';
import '../../extensions/build_context_ext.dart';
import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../../resource/dimens.dart';
import '../../utils/dialog_util.dart';

final signInViewModelProvider =
    StateNotifierProvider.autoDispose<SignInViewModel, SignInViewState>(
        (_) => SignInViewModel(
              loginUseCase: getIt.get<LoginUseCase>(),
              storeAccessTokenUseCase: getIt.get<StoreAccessTokenUseCase>(),
              getLoginStateUseCase: getIt.get<GetLoginStateUseCase>(),
            ));

final _navigateToHomeStreamProvider = StreamProvider.autoDispose<void>(
    (ref) => ref.watch(signInViewModelProvider.notifier).navigateToHomeStream);

final _getLoginStateStreamProvider = StreamProvider.autoDispose<bool>(
  (ref) => ref.watch(signInViewModelProvider.notifier).checkLoginStateStream,
);

final _loadingStreamProvider = StreamProvider.autoDispose<bool>(
    (ref) => ref.watch(signInViewModelProvider.notifier).loadingStream);

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      ref.read(signInViewModelProvider.notifier).checkLoginState();
    });
    _emailEditingController.text = 'vu.nguyen@techsoft.asia';
    _passwordEditingController.text = 'admin123';
  }

  @override
  Widget build(BuildContext context) {
    _setupListeners();

    final state = ref.watch(signInViewModelProvider);

    return Scaffold(
        body: SafeArea(
            child: state.when(
      init: () => _initWidget(),
      loading: () => const Center(
        child: LoadingIndicator(),
      ),
      success: () => const SizedBox.shrink(),
      error: (message) {
        showToast(context, message ?? context.localization.error_generic);
        return const SizedBox.shrink();
      },
    )));
  }

  Widget _initWidget() {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: _mobileLoginScreen(),
          desktop: Row(
            children: [
              const Expanded(
                child: LoginScreenTopImage(),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 450,
                      child: _loginForm(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _mobileLoginScreen() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const LoginScreenTopImage(),
          Row(
            children: [
              Spacer(),
              Expanded(
                flex: 8,
                child: _loginForm(),
              ),
              Spacer(),
            ],
          ),
        ],
      );

  Widget _loginForm() => Form(
        child: Column(
          children: [
            _formField(
                controller: _emailEditingController,
                title: context.localization.register_email),
            _formField(
                controller: _passwordEditingController,
                title: context.localization.register_password),
            const SizedBox(height: Dimens.defaultMarginPaddingLarge),
            Hero(
              tag: "login_btn",
              child: ElevatedButton(
                onPressed: () {
                  ref.read(signInViewModelProvider.notifier).signIn(
                      _emailEditingController.text,
                      _passwordEditingController.text);
                },
                child: Text(context.localization.login.toUpperCase()),
              ),
            ),
            const SizedBox(height: Dimens.defaultMarginPaddingLarge),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const RegisterAccountPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      );

  Widget _formField(
      {required TextEditingController controller, required String title}) {
    return TextFormField(
      controller: controller,
      textInputAction: TextInputAction.done,
      obscureText: title.toLowerCase().contains('password'),
      cursorColor: ColorName.kPrimaryColor,
      decoration: InputDecoration(
        hintText: title,
        alignLabelWithHint: true,
        prefixIcon: const Padding(
          padding: EdgeInsets.zero,
          child: Icon(Icons.lock),
        ),
      ),
    );
  }

  _setupListeners() {
    ref.listen<AsyncValue<bool>>(_loadingStreamProvider, (_, loadingAsync) {
      showOrHideLoading(
          context: context,
          shouldShowLoading: loadingAsync.value ?? false,
          label: context.localization.common_loading_message);
    });
    ref.listen<AsyncValue<void>>(_navigateToHomeStreamProvider,
        (_, navigateToHomeAsync) {
      context.goNamed(RouterName.home.name);
    });

    ref.listen<AsyncValue<bool>>(_getLoginStateStreamProvider,
        (_, loginStateAsync) {
      if (loginStateAsync.hasValue) {
        if (loginStateAsync.value!) {
          context.goNamed(RouterName.home.name);
        }
      }
    });
  }
}
