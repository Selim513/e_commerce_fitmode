import 'package:intl/intl.dart';

class AppFormatters {
  static String formatPrice(double value) {
    final formatter = NumberFormat('#,##0.00');
    String formatted = formatter.format(value);
    if (formatted.endsWith('.00')) {
      formatted = formatted.substring(0, formatted.length - 3);
    }
    return formatted;
  }
}
