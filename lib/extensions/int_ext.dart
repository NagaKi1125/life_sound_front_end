import 'package:intl/intl.dart';

extension IntExt on int {
  String toFormattedIntString() {
    NumberFormat numberFormat = NumberFormat.decimalPattern("sv-SE");
    return numberFormat.format(this);
  }
}
