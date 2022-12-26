import 'package:flutter/widgets.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double scaleFactor;

  var _scaleFactor = 0.0;

  double _scaleFactorOf(BuildContext context) {
    if (_scaleFactor == 0) {
      _scaleFactor = screenWidth / 375; //375 is the width defined in design
    }
    return _scaleFactor;
  }

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    scaleFactor = _scaleFactorOf(context);
  }
}
