
import 'package:injectable/injectable.dart';
import '../../../api/api_service.dart';
import '../../../api/auth_service.dart';
import '../../../di/provider/dio_provider.dart';

String restApiEndpoint = 'http://192.168.1.165:3000/api/';

@module
abstract class NetworkModule {
  @singleton
  AuthService provideAuthService(DioProvider dioProvider) {
    return AuthService(
      dioProvider.getNonAuthenticatedDio(),
      baseUrl: restApiEndpoint,
    );
  }

  @singleton
  ApiService provideApiService(DioProvider dioProvider) {
    return ApiService(
      dioProvider.getAuthenticatedDio(),
      baseUrl: restApiEndpoint,
    );
  }

}
