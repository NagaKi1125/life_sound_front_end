import 'dart:io';

import 'package:dio/dio.dart';
import '../../../di/di.dart';
import '../../../storage/auth_storage.dart';
import '../../../usecases/base/base_use_case.dart';

const _headerAuthorization = 'Authorization';

class AuthInterceptor extends QueuedInterceptor {
  final bool _requireAuthenticate;
  final AuthStorage _authStorage;
  final Dio _dio;

  AuthInterceptor(
    this._requireAuthenticate,
    this._authStorage,
    this._dio,
  );

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (_requireAuthenticate) {
      final token = await _buildToken();
      if (token != null) {
        options.headers.putIfAbsent(_headerAuthorization, () => token);
      }
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    final statusCode = err.response?.statusCode;
    if ((statusCode == HttpStatus.forbidden ||
            statusCode == HttpStatus.unauthorized) &&
        _requireAuthenticate) {
      try {
        // TODO Update to handle with refresh token

      } catch (exception) {
        if (exception is DioError) {
          handler.next(exception);
        } else {
          handler.next(err);
        }
      }
    } else {
      handler.next(err);
    }
  }

  Future<String?> _buildToken() async {
    // TODO Use token type from API
    final tokenType = await _authStorage.tokenType ?? "Bearer";
    final accessToken = await _authStorage.accessToken;
    if (tokenType == null || accessToken == null) return null;
    return '$tokenType $accessToken';
  }
}
