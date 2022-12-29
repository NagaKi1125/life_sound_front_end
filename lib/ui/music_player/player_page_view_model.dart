import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'player_page_view_state.dart';
import '../../../usecases/base/base_use_case.dart';

class PlayerPageViewModel extends StateNotifier<PlayerPageViewState> {
  PlayerPageViewModel() : super(const PlayerPageViewState.init());

  final BehaviorSubject<bool> _loadingSubject = BehaviorSubject();

  Stream<bool> get loadingStream => _loadingSubject.stream;

  Future<void> getPlayerPageInformation() async {
    _loadingSubject.add(true);
    // add function to get information

    _loadingSubject.add(false);

    state = const PlayerPageViewState.success();
  }
}
