class CheckOutOrderDetails {
  final String subtotal;
  final String vat;
  final String shipping;
  final String total;

  CheckOutOrderDetails(
      {required this.subtotal,
      required this.vat,
      required this.shipping,
      required this.total});
}
