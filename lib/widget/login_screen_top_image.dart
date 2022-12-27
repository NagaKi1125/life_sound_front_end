import 'package:flutter/material.dart';
import 'package:life_sound/gen/assets.gen.dart';
import 'package:life_sound/resource/dimens.dart';


class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: Dimens.defaultMarginPaddingLarge * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Assets.images.login.svg(),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: Dimens.defaultMarginPaddingLarge * 2),
      ],
    );
  }
}