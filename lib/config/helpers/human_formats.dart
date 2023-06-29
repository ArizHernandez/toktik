import 'package:intl/intl.dart';

class HumanFormats {
  static humanReadableNumber(double number) {
    return NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
  }
}
