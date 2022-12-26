import 'package:flutter/material.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../resource/dimens.dart';

import '../gen/l10n.dart';

const int _tabHomePageIndex = 0;
const int _tabItemsIndex = 1;
const int _tabCollectionsIndex = 2;
const int _tabTransactionsIndex = 3;
const int _tabPolicyIndex = 4;

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
          _buildBottomNavigationBarItem(
            label: S.of(context).main_tab_items,
            index: _tabItemsIndex,
          ),
          _buildBottomNavigationBarItem(
            label: S.of(context).main_tab_collections,
            index: _tabCollectionsIndex,
          ),
          _buildBottomNavigationBarItem(
            label: S.of(context).main_tab_transactions,
            index: _tabTransactionsIndex,
          ),
          _buildBottomNavigationBarItem(
            label: S.of(context).main_tab_policy,
            index: _tabPolicyIndex,
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
            ? Assets.images.icMainHomeTabSelected.svg()
            : Assets.images.icMainHomeTabUnselected.svg();
      case _tabItemsIndex:
        return selectedItemIndex == index
            ? Assets.images.icMainItemsTabSelected.svg()
            : Assets.images.icMainItemsTabUnselected.svg();
      case _tabCollectionsIndex:
        return selectedItemIndex == index
            ? Assets.images.icMainCollectionsTabSelected.svg()
            : Assets.images.icMainCollectionsTabUnselected.svg();
      case _tabTransactionsIndex:
        return selectedItemIndex == index
            ? Assets.images.icMainTransactionsTabSelected.svg()
            : Assets.images.icMainTransactionsTabUnselected.svg();
      case _tabPolicyIndex:
        return selectedItemIndex == index
            ? Assets.images.icMainPolicyTabSelected.svg()
            : Assets.images.icMainPolicyTabUnselected.svg();
      default:
        return null;
    }
  }
}
