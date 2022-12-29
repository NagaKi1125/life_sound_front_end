import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:life_sound/di/di.dart';
import 'package:life_sound/resource/app_theme.dart';
import 'package:life_sound/utils/size_config.dart';
import '../../../di/di.dart';
import '../../../resource/app_theme.dart';
import 'router/app_route.dart';
import '../../../utils/size_config.dart';

import 'gen/l10n.dart';
import 'router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  configureDependencies();
  runApp(const ProviderScope(child: MyApp()));
}

const routePathRootScreen = '/';
const routePathSecondScreen = 'second';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final botToastBuilder = BotToastInit();
    final appRouter = ref.watch(appRouterProvider);
    initializeDateFormatting();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp.router(
      backButtonDispatcher: RootBackButtonDispatcher(),
      routerDelegate: appRouter,
      theme: AppTheme.defaultTheme,
      localizationsDelegates: const [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        SizeConfig().init(context);
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaleFactor: SizeConfig.scaleFactor),
          child: botToastBuilder(context, child),
        );
      },
    );
  }
}
