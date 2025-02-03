import 'package:intl/intl.dart';

import '../../features/home/data/home_model/products_model/products_model.dart';

class AppFormatters {
  static String formatPrice(double value) {
    final formatter = NumberFormat('#,##0.00');
    String formatted = formatter.format(value);
    if (formatted.endsWith('.00')) {
      formatted = formatted.substring(0, formatted.length - 3);
    }
    return formatted;
  }
  static double calculateSubtotal(List<ProductsModel> products) {
    return products.fold(0.0, (sum, item) => sum + (item.price! * item.quantity));
  }

 static double calculateVat(double subtotal) {
    return subtotal * 0.15; // 15% VAT
  }

 static double calculateTotal(double subtotal, double vat, double shippingFee) {
    return subtotal + vat + shippingFee;
  }
}
