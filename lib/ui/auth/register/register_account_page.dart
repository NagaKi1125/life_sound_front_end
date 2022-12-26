import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../utils/toast_util.dart';

import '../../../extensions/build_context_ext.dart';
import '../../../extensions/string_ext.dart';
import '../../../gen/colors.gen.dart';
import '../../../resource/dimens.dart';
import 'register_account_view_model.dart';
import 'register_account_view_state.dart';
import '../../../widget/loading_indicator.dart';
import '../../../di/di.dart';
import '../../../gen/assets.gen.dart';
import '../../../resource/app_theme.dart';
import '../../../widget/red_dot.dart';

final registerAccountViewModelProvider = StateNotifierProvider.autoDispose<
        RegisterAccountViewModel, RegisterAccountViewState>(
    (_) => RegisterAccountViewModel(
       ));



final _registerAccountSuccessStreamProvider =
    StreamProvider.autoDispose<String>((ref) => ref
        .watch(registerAccountViewModelProvider.notifier)
        .registerAccountSuccessStream);

class RegisterAccountPage extends ConsumerStatefulWidget {
  const RegisterAccountPage({Key? key}) : super(key: key);


  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegisterAccountPageState();
}

class _RegisterAccountPageState extends ConsumerState<RegisterAccountPage> {


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
                  width: Dimens.loadingBigSize,
                  height: Dimens.loadingBigSize)),
              success: () => _buildContent(),
              error: (error) => const SizedBox.shrink(),
            )));
  }

  Widget _buildContent() {
    return Container(
      child: Center(
        child: Text('Register Page'),
      )
      ,
    );
  }


  _setupListeners() {
    ref.listen<AsyncValue<String>>(_registerAccountSuccessStreamProvider,
        (_, registerAccountSuccessAsync) {

    });
  }


}
