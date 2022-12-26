import 'package:intl/intl.dart';

extension DoubleExt on double {
  String toFormattedDoubleString() {
    NumberFormat numberFormat = NumberFormat.decimalPattern("sv-SE");
    return numberFormat.format(this);
  }
}