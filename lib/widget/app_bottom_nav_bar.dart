import 'package:flutter/material.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../resource/dimens.dart';

import '../gen/l10n.dart';

const int _tabHomePageIndex = 0;

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
        backgroundColor: Colors.white,
        selectedItemColor: ColorName.mainTabSelected,
        unselectedItemColor: ColorName.mainTabUnselected,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: Dimens.defaultFontSizeXXSmall,
        unselectedFontSize: Dimens.defaultFontSizeXXSmall,
        items: [
          _buildBottomNavigationBarItem(
            label: S.of(context).main_tab_home,
            index: _tabHomePageIndex,
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
        return selectedItemIndex == index
            ? Assets.images.icAddCollectionItem.svg()
            : Assets.images.icAddCollectionItem.svg();
      default:
        return null;
    }
  }
}
