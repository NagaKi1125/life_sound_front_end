import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../../api/interceptor/auth_interceptor.dart';
import '../../../storage/auth_storage.dart';

const String headerContentType = 'Content-Type';
const String defaultContentType = 'application/json; charset=utf-8';

@Singleton()
class DioProvider {
  final AuthStorage _authStorage;

  Dio? _nonAuthenticatedDio;
  Dio? _authenticatedDio;

  DioProvider(
    this._authStorage,
  );

  Dio getNonAuthenticatedDio() {
    _nonAuthenticatedDio ??= _createDio();
    return _nonAuthenticatedDio!;
  }

  Dio getAuthenticatedDio() {
    _authenticatedDio ??= _createDio(requireAuthenticate: true);
    return _authenticatedDio!;
  }

  Dio _createDio({bool requireAuthenticate = false}) {
    final dio = Dio();
    final appInterceptor =
        AuthInterceptor(requireAuthenticate, _authStorage, dio);
    final interceptors = <Interceptor>[];
    interceptors.add(appInterceptor);
    if (!kReleaseMode) {
      interceptors.add(LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
        requestHeader: true,
      ));
    }

    return dio
      ..options.connectTimeout = 15000
      ..options.receiveTimeout = 30000
      ..options.headers = {headerContentType: defaultContentType}
      ..options = BaseOptions(
        headers: {
          HttpHeaders.cacheControlHeader: 'no-cache',
          HttpHeaders.acceptEncodingHeader: 'gzip, deflate',
          HttpHeaders.connectionHeader: 'keep-alive',
          HttpHeaders.acceptHeader: 'application/json',
        },
      )
      ..interceptors.addAll(interceptors);
  }
}
