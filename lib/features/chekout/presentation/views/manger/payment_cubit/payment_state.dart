class PaymentState {}

class PaymentInitial extends PaymentState {}

class PaymentSuccess extends PaymentState {
  final int selectedIndex;

  PaymentSuccess({required this.selectedIndex});
}
