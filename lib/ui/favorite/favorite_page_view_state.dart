import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_page_view_state.freezed.dart';

@freezed
class FavoritePageViewState with _$FavoritePageViewState {
  const factory FavoritePageViewState.init() = _Init;

  const factory FavoritePageViewState.loading() = _Loading;

  const factory FavoritePageViewState.success() = _Success;

  const factory FavoritePageViewState.error(String? message) = _Error;
}
