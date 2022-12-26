import 'package:flutter/material.dart';
import '../../../di/di.dart';
import '../../../gen/l10n.dart';

extension BuildContextExtension on BuildContext {
  S get localization => S.of(this);

  TextTheme get theme => Theme.of(this).textTheme;

  Size get screenSize => MediaQuery.of(this).size;

  dismissDialog() => Navigator.of(this, rootNavigator: true).pop();

  hideLoading() => Navigator.of(this, rootNavigator: true).pop();

  Object? get arguments => ModalRoute.of(this)!.settings.arguments;
}
