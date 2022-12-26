import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_view_state.freezed.dart';

@freezed
class HomePageViewState with _$HomePageViewState {
  const factory HomePageViewState.init() = _Init;

  const factory HomePageViewState.loading() = _Loading;

  const factory HomePageViewState.success() = _Success;

  const factory HomePageViewState.error(String? message) = _Error;
}
