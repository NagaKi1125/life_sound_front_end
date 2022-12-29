import 'package:flutter_config/flutter_config.dart';

class Env {
  static String get restApiEndpoint {
    return FlutterConfig.get('REST_API_ENDPOINT');
  }

  static String get graphqlApiEndpoint {
    return FlutterConfig.get('GRAPHQL_API_ENDPOINT');
  }
}
