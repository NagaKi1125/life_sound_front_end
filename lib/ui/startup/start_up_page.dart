import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../di/di.dart';
import 'start_up_view_model.dart';
import 'start_up_view_state.dart';

final startUpViewModelProvider =
    StateNotifierProvider.autoDispose<StartUpViewModel, StartUpViewState>(
        (_) => StartUpViewModel());

class StartUpPage extends ConsumerWidget {
  const StartUpPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<StartUpViewState>(startUpViewModelProvider, (_, viewState) {
      viewState.maybeWhen(
          success: (isLoggedIn) {

          },
          orElse: () {});
    });
    return const Scaffold();
  }
}
