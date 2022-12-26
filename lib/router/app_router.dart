
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:life_sound/ui/auth/register/register_account_page.dart';
import 'package:life_sound/ui/auth/sign_in_page.dart';

const String starter = 'starter';
const String loginRouteName = 'login';
const String registerRouteName = 'register';

class AppRouter {
  late final router = GoRouter(
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        name: starter,
        path: '/',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const SignInPage()
        ),
      ),
      GoRoute(
        name: loginRouteName,
        path: '/login',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const SignInPage(),
        ),
      ),
      GoRoute(
        name: registerRouteName,
        path: '/create-account',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const RegisterAccountPage(),
        ),
      ),
      // TODO: Add Home route and children
    ],
    // TODO: Add Error Handler
    // TODO Add Redirect
  );
}
