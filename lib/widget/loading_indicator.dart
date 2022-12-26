import 'package:flutter/material.dart';
import '../../../gen/colors.gen.dart';
import '../../../resource/dimens.dart';

class LoadingIndicator extends StatelessWidget {
  final double width;
  final double height;

  const LoadingIndicator({
    Key? key,
    this.width = Dimens.loadingSmallSize,
    this.height = Dimens.loadingSmallSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: const CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation(ColorName.accent),
      ),
    );
  }
}
