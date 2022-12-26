import 'package:flutter/material.dart';
import '../../../gen/colors.gen.dart';

class TouchBar extends StatelessWidget {
  const TouchBar({super.key});

  @override
  Widget build(BuildContext context) => _touchBar();

  Widget _touchBar() => Container(
      height: 5,
      width: 50,
      decoration: BoxDecoration(
          color: ColorName.touchBarModalBottomSheet,
          borderRadius: BorderRadius.circular(20)));
}
