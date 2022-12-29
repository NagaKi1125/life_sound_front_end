import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:life_sound/model/music.dart';
import 'package:life_sound/resource/app_theme.dart';
import 'package:life_sound/router/app_route.dart';
import 'package:life_sound/router/navigation_manager.dart';
import 'package:life_sound/ui/music_player/player_page.dart';
import 'package:life_sound/usecases/music/get_music_use_case.dart';
import 'package:life_sound/utils/toast_util.dart';

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
        (ref) => HomePageViewModel(getIt.get<GetMusicsUseCase>()));

final _loadingStreamProvider = StreamProvider.autoDispose<bool>(
    (ref) => ref.watch(homePageViewModelProvider.notifier).loadingStream);

final _musicsStreamProvider = StreamProvider.autoDispose<List<Music>>(
    (ref) => ref.watch(homePageViewModelProvider.notifier).getMusicsStream);

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  TextEditingController _searchEditingController = TextEditingController();

  TextStyle textStyle = const TextStyle(
      fontSize: Dimens.defaultFontSizeMedium,
      color: Colors.white,
      fontWeight: FontWeight.w400);

  TextStyle inputTextStyle = AppTheme.defaultTheme.textTheme.bodyText1!
      .copyWith(color: Colors.white, fontWeight: FontWeight.w400);

  double screenWidth = 0;
  double screenHeight = 0;

  List<Music> musics = [];

  List<String> imageUrls = [
    'https://marketplace.canva.com/EAFHtE880QY/1/0/1600w/canva-blue-and-red-modern-music-youtube-thumbnail-cBAYqTj4TLk.jpg',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/party-music-beach-sunset-youtube-thumbnail-design-template-2ee3ca06baa1189a6c1d4bbb596c68b5_screen.jpg?ts=1600839157',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/party-mix-youtube-thumbnail-design-template-765ae085447f6b1f797c9a504a926086_screen.jpg?ts=1570790895',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/music-youtube-thumbnail-design-template-3db21a9b9272c5d9060044e4de9c72e2_screen.jpg?ts=1634472213',
  ];

  _onLiveSearchResult(String value) {}

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      await ref
          .read(homePageViewModelProvider.notifier)
          .getHomePageInformation();
      setState(() {
        screenWidth = MediaQuery.of(context).size.width;
        screenHeight = MediaQuery.of(context).size.height;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    _setupListeners();
    final state = ref.watch(homePageViewModelProvider);

    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: ColorName.linearBetween,
            body: state.when(
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
    return SafeArea(
      child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: Dimens.defaultMarginPaddingXMedium,
              horizontal: Dimens.defaultMarginPaddingMedium),
          child: Column(
            children: [
              _titleBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _slider(),
                      _captionText(
                          title: context.localization.trending_right_now),
                      _recommendForYou(),
                      _captionText(title: context.localization.top_artist),
                      _topArtist(),
                      _captionText(title: context.localization.discover),
                      _recentListening(),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget _titleBar() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchBar(),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Dimens.defaultMarginPaddingMedium),
            child: Text(
              context.localization.main_tab_home,
              style: textStyle.copyWith(
                  fontSize: Dimens.defaultFontSizeXLarge,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ],
      );

  Widget _searchBar() => Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultMarginPaddingXMedium),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.blueGrey.shade50.withOpacity(.5))),
      child: Row(
        children: [
          Assets.images.icSearch.svg(color: Colors.grey.shade400),
          Expanded(
              child: TextFormField(
                  onChanged: _onLiveSearchResult,
                  controller: _searchEditingController,
                  decoration: InputDecoration(
                      hintText: context.localization.search,
                      hintStyle: inputTextStyle.copyWith(color: Colors.white),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      suffix: InkWell(
                          onTap: () => setState(() {
                                _searchEditingController.clear();
                                _onLiveSearchResult(
                                    _searchEditingController.text);
                              }),
                          child: Assets.images.icRemoveText.svg()))))
        ],
      ));

  Widget _slider() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.defaultRadiusMedium),
        ),
        height: MediaQuery.of(context).size.height * .24,
        child: Swiper(
          itemCount: imageUrls.length,
          autoplay: true,
          autoplayDelay: 5000,
          autoplayDisableOnInteraction: true,
          indicatorLayout: PageIndicatorLayout.COLOR,
          itemBuilder: (context, index) {
            return Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(Dimens.defaultRadiusMedium)),
              child: CachedNetworkImage(
                fadeInCurve: Curves.bounceInOut,
                fit: BoxFit.cover,
                imageUrl: imageUrls[index],
                errorWidget: (context, url, error) => Assets
                    .images.icAddItemIconlyBoldImage
                    .svg(fit: BoxFit.scaleDown),
              ),
            );
          },
        ),
      );

  Widget _recommendForYou() => ListView.builder(
        primary: false,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PlayerPage(
                              musics: musics,
                            )),
                  ),
              child: _recommendItem(index: index));
        },
        itemCount: 10,
        scrollDirection: Axis.vertical,
      );

  Widget _recommendItem({required int index}) => Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
            vertical: Dimens.defaultMarginPaddingSmall),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin:
                  const EdgeInsets.only(left: Dimens.defaultMarginPaddingSmall),
              alignment: Alignment.center,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      Dimens.defaultMarginPaddingXMedium)),
              child: CachedNetworkImage(
                width: 60,
                height: 60,
                imageUrl:
                    'https://w0.peakpx.com/wallpaper/117/349/HD-wallpaper-music-neon-icon-violet-background-neon-symbols-music-creative-neon-icons-music-sign-music-signs-music-icon-music-icons-thumbnail.jpg',
                errorWidget: (context, url, error) => Assets
                    .images.icAddItemIconlyBoldImage
                    .svg(fit: BoxFit.scaleDown),
                placeholder: (context, url) => Assets
                    .images.icAddItemIconlyBoldImage
                    .svg(fit: BoxFit.scaleDown),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Dimens.defaultMarginPaddingSmall),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      musics[index].name ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textStyle.copyWith(
                          fontSize: Dimens.defaultFontSizeMedium,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Text(
                      musics[index].authors ??'',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: textStyle.copyWith(
                          fontSize: Dimens.defaultFontSizeSmall,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.heart,
                      color: Colors.grey,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.defaultMarginPaddingMedium),
                  child: Text(
                    musics[index].year.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textStyle.copyWith(
                        fontSize: Dimens.defaultFontSizeSmall,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget _topArtist() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.defaultRadiusMedium),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) {
            return _artistItem(index: index);
          },
          itemCount: 3,
          scrollDirection: Axis.vertical,
        ),
      );

  Widget _artistItem({required int index}) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: Dimens.defaultMarginPaddingMedium),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: Dimens.defaultMarginPaddingSmall),
            alignment: Alignment.center,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Dimens.defaultMarginPaddingXMedium)),
            child: CachedNetworkImage(
              width: 60,
              height: 60,
              imageUrl:
                  'https://cdn.dribbble.com/users/77598/screenshots/15943464/media/dd47924997262139d7e42f5f67c938c7.png?compress=1&resize=400x300',
              errorWidget: (context, url, error) => Assets
                  .images.icAddItemIconlyBoldImage
                  .svg(fit: BoxFit.scaleDown),
              placeholder: (context, url) => Assets
                  .images.icAddItemIconlyBoldImage
                  .svg(fit: BoxFit.scaleDown),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: Dimens.defaultMarginPaddingSmall),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'This is the image title',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textStyle.copyWith(
                        fontSize: Dimens.defaultFontSizeMedium,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  Text(
                    'This is the artists name',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textStyle.copyWith(
                        fontSize: Dimens.defaultFontSizeSmall,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _recentListening() => Container(
        height: MediaQuery.of(context).size.height * .25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * .25,
                width: MediaQuery.of(context).size.height * .25 - 35,
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.defaultMarginPaddingMedium,
                    vertical: Dimens.defaultMarginPaddingSmall),
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimens.defaultRadiusSmall),
                      ),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://z7y9t3r6.rocketcdn.me/wp-content/uploads/2021/10/Crop-Dave-Specter-.jpg',
                        errorWidget: (context, url, error) => Assets
                            .images.icAddItemIconlyBoldImage
                            .svg(fit: BoxFit.scaleDown),
                        placeholder: (context, url) => Assets
                            .images.icAddItemIconlyBoldImage
                            .svg(fit: BoxFit.scaleDown),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.height * .25 - 35,
                        decoration:
                            BoxDecoration(color: Colors.white.withOpacity(.3)),
                        padding: const EdgeInsets.symmetric(
                            vertical: Dimens.defaultMarginPaddingSmall,
                            horizontal: Dimens.defaultMarginPaddingTiny),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'This is the image title',
                              textAlign: TextAlign.left,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: textStyle.copyWith(
                                  fontSize: Dimens.defaultFontSizeNormal,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            Text(
                              'This is the artists name',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: textStyle.copyWith(
                                  fontSize: Dimens.defaultFontSizeSmall,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white60),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: 20),
      );

  Widget _captionText({required String title}) => Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(
            vertical: Dimens.defaultMarginPaddingMedium),
        child: Text(
          textAlign: TextAlign.left,
          title,
          style: textStyle.copyWith(fontSize: Dimens.defaultFontSizeLarge),
        ),
      );

  void _setupListeners() {
    ref.listen<AsyncValue<bool>>(_loadingStreamProvider, (_, loadingAsync) {
      showOrHideLoading(
          context: context,
          shouldShowLoading: loadingAsync.value ?? false,
          label: context.localization.common_loading_message);
    });

    ref.listen<AsyncValue<List<Music>>>(_musicsStreamProvider,
        (_, musicsAsync) {
      if (musicsAsync.hasValue) {
        if (mounted) {
          setState(() {
            musics = musicsAsync.value!;
          });
          log(musics.length.toString());
        }
      }
    });
  }
}
