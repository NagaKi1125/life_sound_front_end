import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_up_view_state.freezed.dart';

@freezed
class StartUpViewState with _$StartUpViewState {
  const factory StartUpViewState.checkLoggedIn() = _CheckLoggedIn;

  const factory StartUpViewState.success(bool isLoggedIn) = _Success;
}
