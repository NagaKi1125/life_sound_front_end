import 'package:flutter/material.dart';
import '../../../gen/colors.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../resource/dimens.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get defaultTheme => ThemeData(
        fontFamily: FontFamily.poppins,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            // TODO Update app text color
            color: Colors.black,
            fontSize: Dimens.defaultFontSizeXMedium,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            color: Colors.black,
            fontSize: Dimens.defaultFontSizeMedium,
            fontWeight: FontWeight.w400,
          ),
          headline3: TextStyle(
            color: Colors.black,
            fontSize: Dimens.defaultFontSizeLarge,
            fontWeight: FontWeight.w700,
          ),
          headline6: TextStyle(
              fontSize: Dimens.defaultFontSizeMedium,
              color: ColorName.addItemTextAppBar,
              fontWeight: FontWeight.w600),
          button: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: Dimens.defaultFontSizeMedium,
          ),
        ),
        primaryColor: Colors.black,
        appBarTheme: const AppBarTheme(color: Colors.white),
      );
}
