import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'home_page_view_state.dart';
import '../../../usecases/base/base_use_case.dart';

class HomePageViewModel extends StateNotifier<HomePageViewState> {
  HomePageViewModel() : super(const HomePageViewState.init());

  final BehaviorSubject<bool> _loadingSubject = BehaviorSubject();

  Stream<bool> get loadingStream => _loadingSubject.stream;

  Future<void> getHomePageInformation() async {
    _loadingSubject.add(true);
    // add function to get information

    _loadingSubject.add(false);

    state = const HomePageViewState.success();
  }
}
