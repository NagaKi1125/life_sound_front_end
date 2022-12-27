import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

const _keyTokenType = 'KEY_TOKEN_TYPE';
const _keyAccessToken = 'KEY_ACCESS_TOKEN';
const _keyUserId = 'KEY_USER_ID';

abstract class AuthStorage {
  Future<String?> get tokenType;

  Future<String?> get accessToken;

  Future<String?> get userId;

  Future<void> storeTokenType(String tokenType);

  Future<void> storeAccessToken(String accessToken);

  Future<void> storeUserId(String userId);

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
  Future<String?> get userId => _storage.read(key: _keyUserId);


  @override
  Future<void> storeTokenType(String tokenType) {
    return _storage.write(key: _keyTokenType, value: tokenType);
  }

  @override
  Future<void> storeAccessToken(String accessToken) {
    return _storage.write(key: _keyAccessToken, value: accessToken);
  }

  @override
  Future<void> storeUserId(String userId) {
    return _storage.write(key: _keyUserId, value: userId);
  }

  @override
  Future<void> clearAllStorage() {
    return _storage.deleteAll();
  }
}
