import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'profile_page_view_state.dart';
import '../../../usecases/base/base_use_case.dart';

class ProfilePageViewModel extends StateNotifier<ProfilePageViewState> {
  ProfilePageViewModel() : super(const ProfilePageViewState.init());

  final BehaviorSubject<bool> _loadingSubject = BehaviorSubject();

  Stream<bool> get loadingStream => _loadingSubject.stream;

  Future<void> getProfilePageInformation() async {
    _loadingSubject.add(true);
    // add function to get information

    _loadingSubject.add(false);

    state = const ProfilePageViewState.success();
  }
}
