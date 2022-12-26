import 'package:flutter/material.dart';
import '../../../extensions/build_context_ext.dart';
import '../../../widget/loading_dialog.dart';

Future showOrHideLoading({
  required BuildContext context,
  String? label,
  required bool shouldShowLoading,
  bool barrierDismissible = false,
}) async {
  if (shouldShowLoading) {
    return showLoading(
      context: context,
      label: label,
      barrierDismissible: barrierDismissible,
    );
  } else {
    return context.hideLoading();
  }
}

Future showLoading({
  required BuildContext context,
  String? label,
  bool barrierDismissible = false,
}) =>
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierColor: Colors.black.withOpacity(0.25),
      builder: (_) => LoadingDialog(label: label),
    );
