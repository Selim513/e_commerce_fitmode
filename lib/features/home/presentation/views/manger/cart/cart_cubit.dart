import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future<void> addToCart(Map<String, dynamic> product) async {
    try {
      await fireStore.collection('cart').doc(product['Id']).set(product);
      emit(CartSuccessState(
          succMessage: 'The product successfuly added to cart'));
    } catch (e) {
      print('Errorrrrrrrrrr ${e.toString()}');
      emit(CartFailureState(errMessage: e.toString()));
    }
  }

  Future<void> fetchCartItems() async {
    emit(CartFechItemLoading());
    try {
      final querySnapshot = await fireStore.collection('cart').get();
      final cartItems = querySnapshot.docs.map((doc) => doc.data()).toList();
      emit(CartFechItemSuccess(productItem: cartItems));
    } catch (e) {
      emit(CartFechItemFailure(errMessage: e.toString()));
    }
  }
}
