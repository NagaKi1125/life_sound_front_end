
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:life_sound/router/app_router.dart';
import '../../../di/di.dart';
import '../../../resource/app_theme.dart';

import 'gen/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    initializeDateFormatting();

    final AppRouter router = AppRouter();

    return MaterialApp.router(
      backButtonDispatcher: RootBackButtonDispatcher(),
      theme: AppTheme.defaultTheme,
      routerDelegate: router.router.routerDelegate,
      routeInformationParser: router.router.routeInformationParser,
      routeInformationProvider: router.router.routeInformationProvider,
      localizationsDelegates: const [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
