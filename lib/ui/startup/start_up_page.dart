import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../di/di.dart';
import '../../../router/app_route.dart';
import '../../../router/navigation_manager.dart';
import '../../../ui/startup/start_up_view_model.dart';
import '../../../ui/startup/start_up_view_state.dart';
import '../../../usecases/auth/get_login_state_use_case.dart';

final startUpViewModelProvider =
    StateNotifierProvider.autoDispose<StartUpViewModel, StartUpViewState>(
        (_) => StartUpViewModel(getIt.get<GetLoginStateUseCase>()));

class StartUpPage extends ConsumerWidget {
  const StartUpPage({Key? key}) : super(key: key);

  static Page page() {
    return const MaterialPage(
      name: AppRoute.startupPath,
      key: ValueKey(AppRoute.startupPath),
      child: StartUpPage(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<StartUpViewState>(startUpViewModelProvider, (_, viewState) {
      viewState.maybeWhen(
          success: (isLoggedIn) {
            getIt.get<NavigationManager>().pushReplacement(
                isLoggedIn ? AppRoute.mainPage() : AppRoute.signInPage());
          },
          orElse: () {});
    });
    ref.watch(startUpViewModelProvider.notifier).checkTokenExisted();
    return const Scaffold();
  }
}
