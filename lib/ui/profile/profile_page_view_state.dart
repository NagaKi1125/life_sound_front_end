import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_page_view_state.freezed.dart';

@freezed
class ProfilePageViewState with _$ProfilePageViewState {
  const factory ProfilePageViewState.init() = _Init;

  const factory ProfilePageViewState.loading() = _Loading;

  const factory ProfilePageViewState.success() = _Success;

  const factory ProfilePageViewState.error(String? message) = _Error;
}
