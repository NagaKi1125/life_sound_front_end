import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_sound/gen/assets.gen.dart';
import 'package:life_sound/gen/colors.gen.dart';
import 'package:life_sound/resource/dimens.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../resource/dimens.dart';

import '../gen/l10n.dart';

const int _tabHomePageIndex = 0;
const int _tabFavoriteIndex = 1;
const int _tabProfileIndex = 2;

class AppBottomNavBar extends StatelessWidget {
  final int selectedItemIndex;
  final Function(int) onItemTapped;

  const AppBottomNavBar({
    Key? key,
    required this.selectedItemIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: BottomNavigationBar(
        backgroundColor: ColorName.mainBg,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: Dimens.defaultFontSizeXXSmall,
        unselectedFontSize: Dimens.defaultFontSizeXXSmall,
        items: [
          _buildBottomNavigationBarItem(
            label: S.of(context).main_tab_home,
            index: _tabHomePageIndex,
          ),
          _buildBottomNavigationBarItem(
            label: S.of(context).main_tab_collections,
            index: _tabFavoriteIndex,
          ),
          _buildBottomNavigationBarItem(
            label: S.of(context).main_tab_transactions,
            index: _tabProfileIndex,
          ),
        ],
        currentIndex: selectedItemIndex,
        onTap: onItemTapped,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(
          top: Dimens.defaultMarginPaddingMedium,
          bottom: Dimens.defaultMarginPaddingMedium,
        ),
        child: _getSelectedIcon(index),
      ),
      label: label,
    );
  }

  Widget? _getSelectedIcon(int index) {
    switch (index) {
      case _tabHomePageIndex:
        return Icon(CupertinoIcons.home,
            color: selectedItemIndex == index ? Colors.white : Colors.grey);
      case _tabFavoriteIndex:
        return Icon(CupertinoIcons.heart_fill,
            color: selectedItemIndex == index ? Colors.white : Colors.grey);
      case _tabProfileIndex:
        return Icon(CupertinoIcons.person_alt,
            color: selectedItemIndex == index ? Colors.white : Colors.grey);

      default:
        return null;
    }
  }
}
