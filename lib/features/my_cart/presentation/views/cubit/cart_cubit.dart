import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../home/data/home_model/products_model/products_model.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final FirebaseFirestore fireStore = FirebaseFirestore.instance;
  int count = 0;

//------------Add product-----------------
  // Future<void> addToCart(ProductsModel product) async {
  //   try {
  //     // تحويل الـ Product إلى JSON
  //     final productData = product.toJson();

  //     // تخزين البيانات في الـ Firestore
  //     await fireStore
  //         .collection('cart')
  //         .doc(product.id.toString())
  //         .set(productData);

  //     emit(CartSuccessState(
  //         succMessage: 'The product successfully added to cart'));
  //   } catch (e) {
  //     print('Error: ${e.toString()}');
  //     emit(CartFailureState(errMessage: e.toString()));
  //   }
  // }
  Future<void> addToCart(ProductsModel product) async {
    try {
      final productData = product.toJson();
      productData['quantity'] = 1; // تعيين الكمية الافتراضية

      await fireStore
          .collection('cart')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('user-item')
          .doc(product.id.toString())
          .set(productData);

      emit(CartSuccessState(
          succMessage: 'The product has been successfully added to the cart'));
    } catch (e) {
      emit(CartFailureState(errMessage: e.toString()));
    }
  }

//---------get product--------------

  Future<void> fetchCartItems() async {
    emit(CartFechItemLoading());
    try {
      final querySnapshot = await fireStore
          .collection('cart')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('user-item')
          .get();
      final cartItems = querySnapshot.docs.map((doc) {
        return ProductsModel.fromJson(doc.data());
      }).toList();

      emit(CartFechItemSuccess(productItem: cartItems));
    } catch (e) {
      emit(CartFechItemFailure(errMessage: e.toString()));
    }
  }

  //------Delet product-----------
  Future<void> deleteCartItem(int productId) async {
    try {
      // حذف المنتج من الـ Firestore بناءً على الـ id
      await fireStore
          .collection('cart')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('user-item')
          .doc(productId.toString())
          .delete();

      emit(CartDeletProductSuccess(
          succMessage:
              'The product has been successfully removed from the cart.'));
    } catch (e) {
      print('Error: ${e.toString()}');
      emit(
          CartDeletProductFailure(errMessage: 'Failed to delete the product.'));
    }
  }

  //------------------update product quantity----
  Future<void> updateProductQuantity(int productId, int newQuantity) async {
    try {
      await fireStore
          .collection('cart')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('user-item')
          .doc(productId.toString())
          .update({
        'quantity': newQuantity,
      });
      emit(CartUpdateQuantitySuccess());
    } catch (e) {
      emit(CartUpdateQuantityFailure(errMessage: e.toString()));
    }
  }
}
