import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_sound/resource/dimens.dart';

showToast(BuildContext context, String text) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(text,
            style: TextStyle(
                color: Colors.grey,
                fontSize: Dimens.defaultFontSizeMedium,
                fontWeight: FontWeight.w600))));
