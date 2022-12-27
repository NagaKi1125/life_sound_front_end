// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../api/api_service.dart' as _i9;
import '../api/auth_service.dart' as _i10;
import '../api/repository/auth_repository.dart' as _i11;
import '../module/network_module.dart' as _i15;
import '../module/storage_module.dart' as _i14;
import '../storage/auth_storage.dart' as _i4;
import '../usecases/auth/get_access_token_from_storage_use_case.dart' as _i6;
import '../usecases/auth/get_login_state_use_case.dart' as _i7;
import '../usecases/auth/login_use_case.dart' as _i12;
import '../usecases/auth/register_use_case.dart' as _i13;
import '../usecases/auth/store_access_token_use_case.dart' as _i8;
import 'provider/dio_provider.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final storageModule = _$StorageModule();
  final networkModule = _$NetworkModule();
  gh.singleton<_i3.FlutterSecureStorage>(storageModule.flutterSecureStorage);
  gh.singleton<_i4.AuthStorage>(
      _i4.AuthStorageImpl(get<_i3.FlutterSecureStorage>()));
  gh.singleton<_i5.DioProvider>(_i5.DioProvider(get<_i4.AuthStorage>()));
  gh.factory<_i6.GetAccessTokenFromStorageUseCase>(
      () => _i6.GetAccessTokenFromStorageUseCase(get<_i4.AuthStorage>()));
  gh.factory<_i7.GetLoginStateUseCase>(
      () => _i7.GetLoginStateUseCase(get<_i4.AuthStorage>()));
  gh.factory<_i8.StoreAccessTokenUseCase>(
      () => _i8.StoreAccessTokenUseCase(get<_i4.AuthStorage>()));
  gh.singleton<_i9.ApiService>(
      networkModule.provideApiService(get<_i5.DioProvider>()));
  gh.singleton<_i10.AuthService>(
      networkModule.provideAuthService(get<_i5.DioProvider>()));
  gh.singleton<_i11.AuthRepository>(
      _i11.AuthRepositoryImpl(get<_i10.AuthService>()));
  gh.factory<_i12.LoginUseCase>(
      () => _i12.LoginUseCase(get<_i11.AuthRepository>()));
  gh.factory<_i13.RegisterUseCase>(
      () => _i13.RegisterUseCase(get<_i11.AuthRepository>()));
  return get;
}

class _$StorageModule extends _i14.StorageModule {}

class _$NetworkModule extends _i15.NetworkModule {}
