import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

const _keyTokenType = 'KEY_TOKEN_TYPE';
const _keyAccessToken = 'KEY_ACCESS_TOKEN';
const _keyRefreshToken = 'KEY_REFRESH_TOKEN';
const _keyIdToken = 'KEY_ID_TOKEN';
const _keyUserId = 'KEY_USER_ID';
const _keyTenantId = 'KEY_TENANT_ID';

abstract class AuthStorage {
  Future<String?> get tokenType;

  Future<String?> get accessToken;

  Future<String?> get refreshToken;

  Future<String?> get idToken;

  Future<String?> get userId;

  Future<String?> get tenantId;

  Future<void> storeTokenType(String tokenType);

  Future<void> storeAccessToken(String accessToken);

  Future<void> storeRefreshToken(String refreshToken);

  Future<void> storeIdToken(String idToken);

  Future<void> storeUserId(String userId);

  Future<void> storeTenantId(String tenantId);

  Future<void> clearAllStorage();
}

@Singleton(as: AuthStorage)
class AuthStorageImpl extends AuthStorage {
  final FlutterSecureStorage _storage;

  AuthStorageImpl(this._storage);

  @override
  Future<String?> get tokenType => _storage.read(key: _keyTokenType);

  @override
  Future<String?> get accessToken => _storage.read(key: _keyAccessToken);

  @override
  Future<String?> get refreshToken => _storage.read(key: _keyRefreshToken);

  @override
  Future<String?> get idToken => _storage.read(key: _keyIdToken);

  @override
  Future<String?> get userId => _storage.read(key: _keyUserId);

  @override
  Future<String?> get tenantId => _storage.read(key: _keyTenantId);

  @override
  Future<void> storeTokenType(String tokenType) {
    return _storage.write(key: _keyTokenType, value: tokenType);
  }

  @override
  Future<void> storeAccessToken(String accessToken) {
    return _storage.write(key: _keyAccessToken, value: accessToken);
  }

  @override
  Future<void> storeRefreshToken(String refreshToken) {
    return _storage.write(key: _keyRefreshToken, value: refreshToken);
  }

  @override
  Future<void> storeIdToken(String idToken) {
    return _storage.write(key: _keyIdToken, value: idToken);
  }

  @override
  Future<void> storeUserId(String userId) {
    return _storage.write(key: _keyUserId, value: userId);
  }

  @override
  Future<void> storeTenantId(String tenantId) {
    return _storage.write(key: _keyTenantId, value: tenantId);
  }

  @override
  Future<void> clearAllStorage() {
    return _storage.deleteAll();
  }
}
