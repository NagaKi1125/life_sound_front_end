import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import '../../../extensions/build_context_ext.dart';
import '../../../resource/dimens.dart';
import '../../../utils/text_toast.dart';

const defaultDuration = Duration(seconds: 2);

showToast(BuildContext context, String message) {
  _showText(
    text: message,
    align: const Alignment(0, -1),
    textStyle: context.theme.button!,
    contentColor: Colors.grey.withOpacity(0.9),
    borderRadius:
        const BorderRadius.all(Radius.circular(Dimens.defaultRadiusMedium)),
    contentPadding: const EdgeInsets.symmetric(
        horizontal: Dimens.defaultMarginPaddingXLarge,
        vertical: Dimens.defaultMarginPaddingXMedium),
  );
}

CancelFunc _showText(
    {required String text,
    WrapAnimation? wrapAnimation,
    Color backgroundColor = Colors.transparent,
    Color contentColor = Colors.black54,
    BorderRadiusGeometry borderRadius =
        const BorderRadius.all(Radius.circular(Dimens.defaultRadiusMedium)),
    TextStyle textStyle = const TextStyle(
        fontSize: Dimens.defaultFontSizeMedium, color: Colors.white),
    AlignmentGeometry? align = const Alignment(0, 0.8),
    EdgeInsetsGeometry contentPadding = const EdgeInsets.symmetric(
        horizontal: Dimens.defaultMarginPaddingXLarge,
        vertical: Dimens.defaultMarginPaddingXMedium),
    Duration? duration = defaultDuration,
    Duration? animationDuration,
    Duration? animationReverseDuration,
    BackButtonBehavior? backButtonBehavior,
    VoidCallback? onClose,
    bool enableKeyboardSafeArea = true,
    bool clickClose = false,
    bool crossPage = true,
    bool onlyOne = true}) {
  return BotToast.showCustomText(
    wrapAnimation: wrapAnimation,
    duration: duration,
    animationDuration: animationDuration,
    animationReverseDuration: animationReverseDuration,
    crossPage: crossPage,
    backgroundColor: backgroundColor,
    clickClose: clickClose,
    backButtonBehavior: backButtonBehavior,
    onClose: onClose,
    enableKeyboardSafeArea: enableKeyboardSafeArea,
    ignoreContentClick: true,
    onlyOne: onlyOne,
    align: align,
    toastBuilder: (_) => TextToast(
      contentPadding: contentPadding,
      contentColor: contentColor,
      borderRadius: borderRadius,
      textStyle: textStyle,
      text: text,
    ),
  );
}
