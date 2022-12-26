import 'package:flutter/material.dart';
import '../../../extensions/build_context_ext.dart';
import '../../../gen/colors.gen.dart';
import '../../../resource/dimens.dart';
import '../../../widget/custom_dialog.dart';
import '../../../widget/loading_indicator.dart';

class LoadingDialog extends StatelessWidget {
  final String? label;

  const LoadingDialog({
    Key? key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.defaultMarginPaddingLarge),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // FIXME: Fit the dialog width to match with the content
            if (label != null) ...[
              Text(
                label ?? '',
                textAlign: TextAlign.center,
                style: context.theme.bodyText2?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: ColorName.accent,
                ),
              ),
              const SizedBox(height: Dimens.defaultSpaceXXMedium),
            ],
            const LoadingIndicator(),
          ],
        ),
      ),
    );
  }
}
