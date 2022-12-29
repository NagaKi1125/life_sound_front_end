import 'dart:math' as math;
import 'package:audioplayers/audioplayers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:life_sound/di/di.dart';
import 'package:life_sound/gen/assets.gen.dart';
import 'package:life_sound/gen/colors.gen.dart';
import 'package:life_sound/model/music.dart';
import 'package:life_sound/resource/dimens.dart';
import 'package:life_sound/router/app_route.dart';
import 'package:life_sound/router/navigation_manager.dart';
import 'package:life_sound/utils/dialog_util.dart';
import 'package:life_sound/utils/toast_util.dart';
import 'package:life_sound/widget/loading_indicator.dart';
import '../../../extensions/build_context_ext.dart';

import 'player_page_view_model.dart';
import 'player_page_view_state.dart';

enum MusicPLayerBody { isCirclePlayer, isLyrics, isContent }

final playerPageViewModelProvider =
    StateNotifierProvider.autoDispose<PlayerPageViewModel, PlayerPageViewState>(
        (ref) => PlayerPageViewModel());

final _loadingStreamProvider = StreamProvider.autoDispose<bool>(
    (ref) => ref.watch(playerPageViewModelProvider.notifier).loadingStream);

class PlayerPage extends ConsumerStatefulWidget {
  final List<Music> musics;
  const PlayerPage({super.key, required this.musics});

  static Page page(List<Music> musics) {
    return MaterialPage(
        name: AppRoute.playerPath,
        key: const ValueKey(AppRoute.playerPath),
        arguments: [musics],
        child: PlayerPage(musics: musics));
  }

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PlayerPageConsumerState();
}

class _PlayerPageConsumerState extends ConsumerState<PlayerPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat();

  TextStyle textStyle = const TextStyle(
      fontSize: Dimens.defaultFontSizeMedium,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  final AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  bool isMuted = false;
  bool isShuffle = false;
  bool isLoop = false;

  double speed = 1;

  _audioListener() {
    audioPlayer.onPlayerStateChanged.listen((event) {
      if (mounted) {
        setState(() {
          isPlaying = event == PlayerState.playing;
        });
      }
    });

    audioPlayer.onDurationChanged.listen((event) {
      if (mounted) {
        setState(() {
          duration = event;
        });
      }
    });

    audioPlayer.onPositionChanged.listen((event) {
      if (mounted) {
        setState(() {
          position = event;
        });
      }
    });
  }

  Future _setAudio() async {
    audioPlayer.setReleaseMode(isLoop ? ReleaseMode.loop : ReleaseMode.release);
    audioPlayer.setSourceUrl(widget.musics.first.previewUrl!);
  }

  @override
  void initState() {
    _audioListener();
    _setAudio();
    super.initState();
    Future.delayed(Duration.zero, () async {
      await ref
          .read(playerPageViewModelProvider.notifier)
          .getPlayerPageInformation();
    });
  }

  @override
  Widget build(BuildContext context) {
    _setupListeners();
    final state = ref.watch(playerPageViewModelProvider);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorName.linearBetween,
          elevation: 0,
        ),
        body: state.when(
            init: () => const SizedBox.shrink(),
            loading: () => const Center(child: LoadingIndicator()),
            success: () => _buildSuccess(),
            error: (message) {
              showToast(context, message ?? context.localization.error_generic);
              return const SizedBox.shrink();
            }));
  }

  Widget _buildSuccess() {
    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (context) {
          final TabController tabController = DefaultTabController.of(context)!;
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(
              backgroundColor: ColorName.linearBetween,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: TabBar(
                    isScrollable: true,
                    labelColor: Colors.white,
                    indicatorColor: Colors.transparent,
                    indicatorWeight: 3,
                    labelStyle: textStyle.copyWith(
                        fontSize: Dimens.defaultFontSizeNormal,
                        fontWeight: FontWeight.w600),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      _tabTitle(title: 'Player'),
                      _tabTitle(title: 'Lyrics'),
                      _tabTitle(title: 'Playlist'),
                    ]),
              ),
              body: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: TabBarView(
                        children: [
                          _musicPlayerInfo(),
                          _bodyContent(),
                          _playList(),
                        ],
                      ),
                    ),
                    _audioPlayer(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _tabTitle({required String title}) => Padding(
        padding:
            const EdgeInsets.only(bottom: Dimens.defaultMarginPaddingMedium),
        child: Text(
          title,
        ),
      );

  Widget _playList() {
    return Container();
  }

  Widget _bodyContent() {
    return Container();
  }

  Widget _audioPlayer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AnimatedContainer(
          margin: const EdgeInsets.symmetric(
              horizontal: Dimens.defaultMarginPaddingLarge,
              vertical: Dimens.defaultMarginPaddingXMedium),
          height: MediaQuery.of(context).size.height * .27,
          duration: const Duration(milliseconds: 500),
          clipBehavior: Clip.hardEdge,
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.defaultMarginPaddingLarge,
            vertical: Dimens.defaultMarginPaddingXMedium,
          ),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.2),
              border: Border.all(
                color: Colors.white.withOpacity(.6),
              ),
              borderRadius: BorderRadius.circular(Dimens.defaultRadiusMax)),
          child: _musicPlayerController(),
        ),
      ],
    );
  }

  Widget _musicPlayerInfo() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(),
          ),
          Container(
            padding: const EdgeInsets.all(Dimens.defaultMarginPaddingMedium),
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _animationController.value * 2 * math.pi,
                  child: child,
                );
              },
              child: Container(
                margin: const EdgeInsets.all(Dimens.defaultMarginPaddingSmall),
                width: MediaQuery.of(context).size.width * .6,
                height: MediaQuery.of(context).size.width * .6,
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(500)),
                child: CachedNetworkImage(
                  width: MediaQuery.of(context).size.width * .6,
                  height: MediaQuery.of(context).size.width * .6,
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
            ),
          ),
        ],
      );

  Widget _musicPlayerController() => Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.defaultMarginPaddingMedium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.musics.first.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textStyle.copyWith(
                    fontSize: Dimens.defaultFontSizeNormal,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  widget.musics.first.authors!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textStyle.copyWith(
                      fontSize: Dimens.defaultFontSizeXSmall,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _audioTime(formatTime(position)),
                Expanded(
                  child: Slider(
                      inactiveColor: Colors.grey,
                      activeColor: Colors.white,
                      min: 0,
                      max: duration.inSeconds.toDouble(),
                      value: position.inSeconds.toDouble(),
                      onChanged: (value) async {
                        final position = Duration(seconds: value.toInt());
                        await audioPlayer.seek(position);
                        await audioPlayer.resume();
                      }),
                ),
                _audioTime(formatTime(duration))
              ],
            ),
            Text(
              '${speed}x',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:
                  textStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if (mounted) {
                      setState(() {
                        isMuted = !isMuted;
                        audioPlayer.setVolume(isMuted ? 0 : 1);
                      });
                    }
                  },
                  child: isMuted
                      ? Assets.images.icVolumeMute.svg()
                      : Assets.images.icVolumn.svg(),
                ),
                IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      if (mounted) {
                        setState(() {
                          if (speed >= 0) {
                            speed = speed / 2;
                            // audioPlayer.setPlaybackRate(speed / 2);
                          }
                        });
                      }
                    },
                    icon: Assets.images.icPlayerPrevious.svg()),
                IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {},
                    icon: Assets.images.icPlayBack.svg()),
                Center(
                  child: InkWell(
                    onTap: () async {
                      isPlaying
                          ? await audioPlayer.pause()
                          : await audioPlayer.resume();
                    },
                    child: Icon(
                      isPlaying
                          ? CupertinoIcons.pause_fill
                          : CupertinoIcons.play_arrow_solid,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                ),
                IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {
                      if (mounted) {
                        setState(() {
                          if (speed >= 0) {
                            speed = speed * 2;
                            // audioPlayer.setPlaybackRate(speed / 2);
                          }
                        });
                      }
                    },
                    icon: Assets.images.icPlayForward.svg()),
                IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: () {},
                    icon: Assets.images.icPlayerNext.svg()),
                InkWell(
                  onTap: () {
                    if (mounted) {
                      setState(() {
                        isShuffle = !isShuffle;
                      });
                    }
                  },
                  child: isShuffle
                      ? Assets.images.icShuffle.svg()
                      : Assets.images.icParallel.svg(),
                )
              ],
            ),
          ],
        ),
      );

  Widget _audioTime(String time) {
    return Text(
      time,
      style: textStyle.copyWith(
        fontSize: Dimens.defaultFontSizeSmall,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    _animationController.dispose();
    super.dispose();
  }

  _setupListeners() {
    ref.listen<AsyncValue<bool>>(_loadingStreamProvider, (_, loadingAsync) {
      showOrHideLoading(
          context: context,
          shouldShowLoading: loadingAsync.value ?? false,
          label: context.localization.common_loading_message);
    });
  }
}
