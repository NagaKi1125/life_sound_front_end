import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:life_sound/ui/favorite/favorite_page.dart';
import 'package:life_sound/ui/music_player/player_page.dart';
import 'package:life_sound/ui/profile/profile_page.dart';

import '../router/app_route.dart';
import '../widget/app_bottom_nav_bar.dart';
import '../widget/keep_alive_wrapper.dart';
import 'home/home_page.dart';

final selectedTabMainPageIndexProvider =
    StateProvider.autoDispose<int>((_) => 0);

class MainPage extends ConsumerStatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static Page page() {
    return const MaterialPage(
      name: AppRoute.mainPath,
      key: ValueKey(AppRoute.mainPath),
      child: MainPage(),
    );
  }

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  final List<Widget> _pages = const [
    HomePage(),
    ProfilePage(),
  ];

  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<int>(selectedTabMainPageIndexProvider, (_, newIndex) {
      _pageController.jumpToPage(newIndex);
    });

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarDividerColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _pages,
        ),
        bottomNavigationBar: Consumer(
          builder: (BuildContext context, WidgetRef widgetRef, _) {
            final selectedPage =
                widgetRef.watch(selectedTabMainPageIndexProvider);
            return AppBottomNavBar(
              selectedItemIndex: selectedPage,
              onItemTapped: _onBottomNavigationBarItemTapped,
            );
          },
        ),
      ),
    );
  }

  _onBottomNavigationBarItemTapped(int index) {
    ref.read(selectedTabMainPageIndexProvider.notifier).state = index;
  }
}
