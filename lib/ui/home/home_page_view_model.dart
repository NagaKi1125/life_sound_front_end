import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:life_sound/model/music.dart';
import 'package:life_sound/usecases/music/get_music_use_case.dart';
import 'package:rxdart/rxdart.dart';
import 'home_page_view_state.dart';
import '../../../usecases/base/base_use_case.dart';

class HomePageViewModel extends StateNotifier<HomePageViewState> {
  HomePageViewModel(this._getMusicsUseCase)
      : super(const HomePageViewState.init());

  final GetMusicsUseCase _getMusicsUseCase;

  final BehaviorSubject<bool> _loadingSubject = BehaviorSubject();

  Stream<bool> get loadingStream => _loadingSubject;

  final BehaviorSubject<List<Music>> _getMusicsSubject = BehaviorSubject();

  Stream<List<Music>> get getMusicsStream => _getMusicsSubject;

  Future<void> getHomePageInformation() async {
    _loadingSubject.add(true);
    // add function to get information
    final result = await _getMusicsUseCase.call();

    _loadingSubject.add(false);

    if (result is Success<List<Music>>) {
      _getMusicsSubject.add(result.value);
      state = const HomePageViewState.success();
    }

    if (result is Failed<List<Music>>) {
      return;
    }
  }
}
