import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_account_view_state.freezed.dart';

@freezed
class RegisterAccountViewState with _$RegisterAccountViewState {
  const factory RegisterAccountViewState.init() = _Init;

  const factory RegisterAccountViewState.loading() = _Loading;

  const factory RegisterAccountViewState.success() = _Success;

  const factory RegisterAccountViewState.error(String? message) = _Error;
}
