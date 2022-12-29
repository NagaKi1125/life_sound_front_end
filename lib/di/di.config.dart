// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../api/api_service.dart' as _i10;
import '../api/auth_service.dart' as _i11;
import '../api/repository/auth_repository.dart' as _i14;
import '../api/repository/music_repository.dart' as _i12;
import '../api/repository/user_repositoy.dart' as _i13;
import '../module/network_module.dart' as _i20;
import '../module/storage_module.dart' as _i19;
import '../router/navigation_manager.dart' as _i4;
import '../storage/auth_storage.dart' as _i5;
import '../usecases/auth/get_access_token_from_storage_use_case.dart' as _i7;
import '../usecases/auth/get_login_state_use_case.dart' as _i8;
import '../usecases/auth/login_use_case.dart' as _i17;
import '../usecases/auth/register_use_case.dart' as _i18;
import '../usecases/auth/store_access_token_use_case.dart' as _i9;
import '../usecases/music/get_music_use_case.dart' as _i15;
import '../usecases/user/get_user_information_use_case.dart' as _i16;
import 'provider/dio_provider.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

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
  gh.singleton<_i4.NavigationManagerDelegate>(_i4.NavigationManagerDelegate());
  gh.singleton<_i5.AuthStorage>(
      _i5.AuthStorageImpl(get<_i3.FlutterSecureStorage>()));
  gh.singleton<_i6.DioProvider>(_i6.DioProvider(get<_i5.AuthStorage>()));
  gh.factory<_i7.GetAccessTokenFromStorageUseCase>(
      () => _i7.GetAccessTokenFromStorageUseCase(get<_i5.AuthStorage>()));
  gh.factory<_i8.GetLoginStateUseCase>(
      () => _i8.GetLoginStateUseCase(get<_i5.AuthStorage>()));
  gh.singleton<_i4.NavigationManager>(
      _i4.NavigationManager(get<_i4.NavigationManagerDelegate>()));
  gh.factory<_i9.StoreAccessTokenUseCase>(
      () => _i9.StoreAccessTokenUseCase(get<_i5.AuthStorage>()));
  gh.singleton<_i10.ApiService>(
      networkModule.provideApiService(get<_i6.DioProvider>()));
  gh.singleton<_i11.AuthService>(
      networkModule.provideAuthService(get<_i6.DioProvider>()));
  gh.singleton<_i12.MusicRepository>(
      _i12.MusicRepositoryImpl(get<_i10.ApiService>()));
  gh.singleton<_i13.UserRepository>(
      _i13.UserRepositoryImpl(get<_i10.ApiService>()));
  gh.singleton<_i14.AuthRepository>(
      _i14.AuthRepositoryImpl(get<_i11.AuthService>()));
  gh.factory<_i15.GetMusicsUseCase>(
      () => _i15.GetMusicsUseCase(get<_i12.MusicRepository>()));
  gh.factory<_i16.GetUserInformationUseCase>(
      () => _i16.GetUserInformationUseCase(get<_i13.UserRepository>()));
  gh.factory<_i17.LoginUseCase>(
      () => _i17.LoginUseCase(get<_i14.AuthRepository>()));
  gh.factory<_i18.RegisterUseCase>(
      () => _i18.RegisterUseCase(get<_i14.AuthRepository>()));
  return get;
}

class _$StorageModule extends _i19.StorageModule {}

class _$NetworkModule extends _i20.NetworkModule {}
