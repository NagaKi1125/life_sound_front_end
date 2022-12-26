import 'package:flutter/material.dart';
import '../../../resource/dimens.dart';
import '../../../utils/ui_utils.dart';

class CustomDialog extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const CustomDialog({
    Key? key,
    required this.child,
    this.backgroundColor = Colors.white10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: defaultDialogBlur(),
      child: Dialog(
        insetPadding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultMarginPaddingLarge,
          vertical: Dimens.defaultMarginPaddingXLarge,
        ),
        elevation: Dimens.defaultBlurRadius,
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(Dimens.defaultRadiusXXMedium)),
        ),
        child: child,
      ),
    );
  }
}
