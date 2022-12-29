import 'package:life_sound/model/music.dart';

class AppRoute {
  final String path;
  final List<dynamic>? arguments;

  static const String startupPath = "/";
  static const String mainPath = "/main";
  static const String signInPath = "/signIn";
  static const String registerAccountPath = "/register_account";
  static const String playerPath = "/player";

  AppRoute.startUpPage()
      : path = startupPath,
        arguments = null;

  AppRoute.signInPage()
      : path = signInPath,
        arguments = null;

  AppRoute.registerAccountPage()
      : path = registerAccountPath,
        arguments = null;

  AppRoute.mainPage()
      : path = mainPath,
        arguments = null;
  
  AppRoute.playerPage(List<Music> musics)
      : path = mainPath,
        arguments = [musics];

  bool get isStartUpPage => path == startupPath;

  bool get isSignInPage => path == signInPath;

  bool get isRegisterAccountPage => path == registerAccountPath;

  bool get isMainPage => path == mainPath;

  bool get isPlayerPage => path == playerPath;
}
