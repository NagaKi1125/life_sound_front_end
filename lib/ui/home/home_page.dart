import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:life_sound/utils/custom_toast.dart';

import '../../../di/di.dart';
import '../../../extensions/build_context_ext.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../resource/dimens.dart';
import '../../../utils/dialog_util.dart';
import '../../../widget/loading_indicator.dart';
import 'home_page_view_model.dart';
import 'home_page_view_state.dart';

final homePageViewModelProvider =
    StateNotifierProvider.autoDispose<HomePageViewModel, HomePageViewState>(
        (ref) => HomePageViewModel());

final _loadingStreamProvider = StreamProvider.autoDispose<bool>(
    (ref) => ref.watch(homePageViewModelProvider.notifier).loadingStream);

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  TextStyle textStyle = const TextStyle(
      fontSize: Dimens.defaultFontSizeMedium,
      color: ColorName.addItemTextCaption,
      fontWeight: FontWeight.w400);

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      await ref
          .read(homePageViewModelProvider.notifier)
          .getHomePageInformation();
    });
  }

  @override
  Widget build(BuildContext context) {
    _setupListeners();
    final state = ref.watch(homePageViewModelProvider);

    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            body: state.when(
                // Todo change this to init while implement API
                init: () => const SizedBox.shrink(),
                loading: () => const Center(child: LoadingIndicator()),
                success: () => _success(),
                error: (message) {
                  showToast(
                      context, message ?? context.localization.error_generic);
                  return const SizedBox.shrink();
                })));
  }

  Widget _success() {
    return Container(
      child: Center(
        child: Text('Home Page'),
      ),
    );
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
