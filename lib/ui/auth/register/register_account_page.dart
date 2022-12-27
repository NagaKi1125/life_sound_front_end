import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:life_sound/router/app_router.dart';
import 'package:life_sound/ui/auth/sign_in_page.dart';
import 'package:life_sound/usecases/auth/register_use_case.dart';
import 'package:life_sound/utils/custom_toast.dart';
import 'package:life_sound/widget/already_have_an_account_acheck.dart';
import 'package:life_sound/widget/background.dart';
import 'package:life_sound/widget/responsive.dart';
import 'package:life_sound/widget/sign_up_top_image.dart';

import '../../../extensions/build_context_ext.dart';
import '../../../gen/colors.gen.dart';
import '../../../resource/dimens.dart';
import 'register_account_view_model.dart';
import 'register_account_view_state.dart';
import '../../../widget/loading_indicator.dart';
import '../../../di/di.dart';
import '../../../gen/assets.gen.dart';
import '../../../resource/app_theme.dart';
import 'package:go_router/go_router.dart';

final registerAccountViewModelProvider = StateNotifierProvider.autoDispose<
        RegisterAccountViewModel, RegisterAccountViewState>(
    (_) => RegisterAccountViewModel(
          registerUseCase: getIt.get<RegisterUseCase>(),
        ));

final _registerAccountSuccessStreamProvider = StreamProvider.autoDispose<void>(
    (ref) => ref
        .watch(registerAccountViewModelProvider.notifier)
        .registerAccountSuccessStream);

class RegisterAccountPage extends ConsumerStatefulWidget {
  const RegisterAccountPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegisterAccountPageState();
}

class _RegisterAccountPageState extends ConsumerState<RegisterAccountPage> {
  TextEditingController _nameEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _confirmPasswordEditingController =
      TextEditingController();

  TextStyle titleStyle = const TextStyle(
      fontSize: 28,
      color: ColorName.addItemTextCaption,
      fontWeight: FontWeight.w700);

  TextStyle inputTextStyle = AppTheme.defaultTheme.textTheme.bodyText1!
      .copyWith(
          color: ColorName.addItemTextCaption, fontWeight: FontWeight.w500);

  @override
  void initState() {
    super.initState();
    _nameEditingController.text = 'NagaKi';
    _emailEditingController.text = 'nqhvu.18it2@vku.udn.vn';
    _passwordEditingController.text = 'admin123';
    _confirmPasswordEditingController.text = 'admin';
  }

  @override
  Widget build(BuildContext context) {
    _setupListeners();
    final state = ref.watch(registerAccountViewModelProvider);
    return Scaffold(
        body: SafeArea(
            child: state.when(
      init: () => _buildContent(),
      loading: () => const Center(
          child: LoadingIndicator(
              width: Dimens.loadingBigSize, height: Dimens.loadingBigSize)),
      success: () => const SizedBox.shrink(),
      error: (error) => const SizedBox.shrink(),
    )));
  }

  Widget _buildContent() {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: _mobileRegisterScreen(),
          desktop: Row(
            children: [
              const Expanded(
                child: SignUpScreenTopImage(),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 450,
                      child: _signUpForm(),
                    ),
                    const SizedBox(
                        height: Dimens.defaultMarginPaddingLarge / 2),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _mobileRegisterScreen() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SignUpScreenTopImage(),
          Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 8,
                child: _signUpForm(),
              ),
              const Spacer(),
            ],
          ),
        ],
      );

  Widget _signUpForm() {
    return Form(
      child: Column(
        children: [
          _formField(
              controller: _nameEditingController,
              title: context.localization.register_name),
          _formField(
              controller: _emailEditingController,
              title: context.localization.register_email),
          _formField(
              controller: _passwordEditingController,
              title: context.localization.register_password),
          _formField(
              controller: _confirmPasswordEditingController,
              title: context.localization.register_confirm_password),
          const SizedBox(height: Dimens.defaultMarginPaddingLarge / 2),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Dimens.defaultMarginPaddingLarge),
            child: ElevatedButton(
              onPressed: () {
                if (_passwordEditingController.text.trim() ==
                    _confirmPasswordEditingController.text.trim()) {
                  ref
                      .read(registerAccountViewModelProvider.notifier)
                      .registerAccount(
                          name: _nameEditingController.text.trim(),
                          email: _emailEditingController.text.trim(),
                          password: _passwordEditingController.text.trim());
                } else {
                  showToast(context, 'Password not match');
                }
              },
              child: Text(context.localization.sign_up.toUpperCase()),
            ),
          ),
          const SizedBox(height: Dimens.defaultMarginPaddingLarge),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignInPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

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
    ref.listen<AsyncValue<void>>(_registerAccountSuccessStreamProvider,
        (_, registerAccountSuccessAsync) {
      context.goNamed(RouterName.login.name);
    });
  }
}
