import 'package:e_commerce_fitmode/features/chekout/presentation/views/manger/payment_cubit/payment_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());
  final int? selectIndex = 0;
  void selectedPayment(int index) {
    emit(PaymentSuccess(selectedIndex: index));
  }
}
