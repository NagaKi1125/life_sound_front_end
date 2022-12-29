import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:life_sound/ui/home/home_page.dart';
import 'package:life_sound/utils/dialog_util.dart';
import 'package:life_sound/utils/toast_util.dart';
import 'package:life_sound/widget/loading_indicator.dart';
import '../../../extensions/build_context_ext.dart';
import 'profile_page_view_model.dart';
import 'profile_page_view_state.dart';

final profilePageViewModelProvider = StateNotifierProvider.autoDispose<
    ProfilePageViewModel,
    ProfilePageViewState>((ref) => ProfilePageViewModel());

final _loadingStreamProvider = StreamProvider.autoDispose<bool>(
    (ref) => ref.watch(profilePageViewModelProvider.notifier).loadingStream);

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfilePageConsumerState();
}

class _ProfilePageConsumerState extends ConsumerState<ProfilePage> {
  
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration.zero, () async {
      await ref
          .read(homePageViewModelProvider.notifier)
          .getHomePageInformation();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _setupListeners();
    final state = ref.read(profilePageViewModelProvider);
    return Scaffold(
        body: state.when(
            init: () => const SizedBox.shrink(),
            loading: () => const Center(child: LoadingIndicator()),
            success: () => _success(),
            error: (message) {
              showToast(context, message ?? context.localization.error_generic);
              return const SizedBox.shrink();
            }));
  }

  Widget _success() {
    return Container();
  }

  void _setupListeners() {
    ref.listen<AsyncValue<bool>>(_loadingStreamProvider, (_, loadingAsync) {
      showOrHideLoading(
          context: context,
          shouldShowLoading: loadingAsync.value ?? false,
          label: context.localization.common_loading_message);
    });
  }
}
