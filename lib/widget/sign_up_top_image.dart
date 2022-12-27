import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_sound/gen/assets.gen.dart';
import 'package:life_sound/resource/dimens.dart';


class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign Up".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Dimens.defaultMarginPaddingLarge),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Assets.images.signup.svg()
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: Dimens.defaultMarginPaddingLarge),
      ],
    );
  }
}
