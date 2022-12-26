import 'package:flutter/material.dart';
import '../../../resource/dimens.dart';

class TextToast extends StatelessWidget {
  final String text;
  final EdgeInsetsGeometry? contentPadding;
  final Color? contentColor;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? textStyle;

  const TextToast({
    Key? key,
    required this.text,
    this.contentPadding,
    this.contentColor,
    this.borderRadius,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: Dimens.toastTopMargin,
        left: Dimens.defaultMarginPaddingXLarge,
        right: Dimens.defaultMarginPaddingXLarge,
      ),
      padding: contentPadding,
      decoration: BoxDecoration(
        color: contentColor,
        borderRadius: borderRadius,
      ),
      child: Text(
        text,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
