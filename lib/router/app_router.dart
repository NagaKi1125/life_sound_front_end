import 'package:bot_toast/bot_toast.dart';
import 'package:fbroadcast_nullsafety/fbroadcast_nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:life_sound/ui/music_player/player_page.dart';
import '../../../ui/auth/register/register_account_page.dart';
import '../../../ui/auth/sign_in_page.dart';
import '../../../usecases/auth/get_login_state_use_case.dart';
import '../../../usecases/base/base_use_case.dart';

import '../di/di.dart';
import '../router/app_route.dart';
import '../router/navigation_manager.dart';
import '../router/navigator_stack.dart';
import '../ui/main_page.dart';
import '../ui/startup/start_up_page.dart';

final appRouterProvider = Provider<AppRouter>((ref) => AppRouter(
      NavigatorStack(root: AppRoute.startUpPage()),
      getIt.get<NavigationManagerDelegate>(),
      getIt.get<GetLoginStateUseCase>(),
    ));

class AppRouter extends RouterDelegate<AppRoute>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoute> {
  static const onPopPageKey = "ON_POP_PAGE";

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final NavigatorStack _navigatorStack;
  final NavigationManagerDelegate _navigationManagerDelegate;
  final GetLoginStateUseCase _getLoginStateUseCase;

  AppRouter(
    this._navigatorStack,
    this._navigationManagerDelegate,
    this._getLoginStateUseCase,
  ) : navigatorKey = GlobalKey<NavigatorState>() {
    // define inline handlers for navigation manager
    _navigationManagerDelegate.onPush = (AppRoute route) {
      _navigatorStack.push(route);
    };
    _navigationManagerDelegate.onPushReplacement = (AppRoute route) {
      _navigatorStack.pushReplacement(route);
    };
    _navigationManagerDelegate.onPop = () {
      _navigatorStack.pop();
    };
    _navigationManagerDelegate.onReset = (AppRoute? route) {
      _navigatorStack.resetNewStack(route);
    };
    _navigationManagerDelegate.onPushAndWaitForResult = (AppRoute route) {
      return _navigatorStack.pushAndWaitForResult(route);
    };
    _navigationManagerDelegate.onPopWithResult = (value) {
      _navigatorStack.popWithResult(value);
    };
    _navigatorStack.addListener(notifyListeners);
  }

  @override
  void dispose() {
    _navigatorStack.removeListener(notifyListeners);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        onPopPage: _handlePopPage,
        observers: [BotToastNavigatorObserver()],
        pages: _navigatorStack.items.map<Page<dynamic>>((route) {
          // This is the page stack so they should be placed in ascending order.
          if (route.isStartUpPage) {
            return StartUpPage.page();
          }
          if (route.isSignInPage) {
            return SignInPage.page();
          }
          if (route.isRegisterAccountPage) {
            return RegisterAccountPage.page();
          }
          if (route.isMainPage) {
            return MainPage.page();
          }
          if (route.isPlayerPage) {
            return PlayerPage.page(route.arguments?[0]);
          }

          throw UnsupportedError('Undefined route!');
        }).toList());
  }

  bool _handlePopPage(Route<dynamic> route, result) {
    // let the OS handle the back press if there was nothing to pop
    if (!route.didPop(result)) return false;
    // if we are on root, let OS close app
    if (_navigatorStack.items.length == 1) return false;
    // otherwise, pop the stack and consume the event
    _navigatorStack.pop();

    // Broadcast a event to notify that a page was popped by
    // Android: press on system back button
    // iOS: swipe left to right
    FBroadcast.instance().broadcast(onPopPageKey);
    return true;
  }

  @override
  Future<void> setNewRoutePath(AppRoute configuration) async {
    final result = await _getLoginStateUseCase.call();
    if (configuration.path != AppRoute.startupPath &&
        (result is Success<bool> && result.value == true)) {
      _navigatorStack.push(configuration);
    }
  }
}
