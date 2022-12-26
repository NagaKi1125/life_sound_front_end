import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'sign_in_view_model.dart';
import 'sign_in_view_state.dart';

import '../../di/di.dart';
import '../../extensions/build_context_ext.dart';
import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../../resource/dimens.dart';
import '../../utils/dialog_util.dart';
import '../../utils/toast_util.dart';

final signInViewModelProvider =
    StateNotifierProvider.autoDispose<SignInViewModel, SignInViewState>((_) =>
        SignInViewModel(
            ));


final _navigateToHomeStreamProvider = StreamProvider.autoDispose<void>(
    (ref) => ref.watch(signInViewModelProvider.notifier).navigateToHomeStream);

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {

  @override
  Widget build(BuildContext context) {
    _handleViewStateChanged(ref, context);
    _setupListeners();

    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Text('Sign in page'),
          ),
        ));
  }

  void _handleViewStateChanged(WidgetRef ref, BuildContext context) {
    ref.listen<SignInViewState>(signInViewModelProvider, (_, state) {
      showOrHideLoading(
          shouldShowLoading: state == const SignInViewState.loading(),
          context: context,
          label: context.localization.common_loading_message);
      state.maybeWhen(
          success: () {},
          error: (message) {
            showToast(context, message ?? context.localization.error_generic);
          },
          orElse: () {});
    });
  }

  _setupListeners() {

    ref.listen<AsyncValue<void>>(_navigateToHomeStreamProvider,
        (_, navigateToHomeAsync) {
     // navigato to main screen
    });
  }

}
