import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_page_view_state.freezed.dart';

@freezed
class PlayerPageViewState with _$PlayerPageViewState {
  const factory PlayerPageViewState.init() = _Init;

  const factory PlayerPageViewState.loading() = _Loading;

  const factory PlayerPageViewState.success() = _Success;

  const factory PlayerPageViewState.error(String? message) = _Error;
}
