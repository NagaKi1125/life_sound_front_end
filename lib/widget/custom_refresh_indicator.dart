import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

typedef RefreshCallback = Future<void> Function();

class CustomRefreshIndicator extends StatelessWidget {
  final RefreshCallback onRefresh;
  final Widget child;

  const CustomRefreshIndicator({
    Key? key,
    required this.onRefresh,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        color: ColorName.addItemReceiptBtn,
        backgroundColor: Colors.white,
        strokeWidth: 2.0,
        onRefresh: onRefresh,
        child: child);
  }
}
