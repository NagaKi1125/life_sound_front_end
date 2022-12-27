import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sound/ui/auth/register/register_account_page.dart';
import 'package:life_sound/ui/auth/sign_in_page.dart';
import 'package:life_sound/ui/home/home_page.dart';

const String starterPath = '/';
const String loginPath = '/login';
const String registerPath = '/register';
const String homePath = '/home';
const String profilePath = '/profile';
const String songPath = '/song';
const String filterPath = '/filter';

enum RouterName {
  // get started
  starter,
  // auth
  login,
  register,
  // navigation Bar
  main,
  // primary pages
  home,
  profile,
  song,
  filter,
}

class AppRouter {
  late final router = GoRouter(
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      route(
          name: RouterName.starter,
          path: starterPath,
          child: const SignInPage()),
      route(
          name: RouterName.register,
          path: registerPath,
          child: const RegisterAccountPage()),
      route(name: RouterName.login, path: loginPath, child: const SignInPage()),
      route(name: RouterName.home, path: homePath, child: const HomePage()),
      // TODO: Add Home route and children
    ],
    // TODO: Add Error Handler
    // TODO Add Redirect
  );

  GoRoute route(
          {required RouterName name,
          required String path,
          required Widget child,
          List<RouteBase>? routes}) =>
      GoRoute(
        name: name.name,
        path: path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: child,
        ),
        routes: routes ?? List.empty(),
      );
}
