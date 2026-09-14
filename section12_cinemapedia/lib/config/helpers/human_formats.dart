import 'package:intl/intl.dart';

class HumanFormats {
  static String number(double number) {
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '', // Pass a space instead of an empty string
      locale: 'en',
    ).format(number);

    return formattedNumber;
  }
}