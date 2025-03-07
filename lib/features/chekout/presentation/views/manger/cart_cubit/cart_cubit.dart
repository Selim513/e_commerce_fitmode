import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../home/data/home_model/products_model/products_model.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final FirebaseFirestore fireStore = FirebaseFirestore.instance;
  int count = 0;

//------------Add product-----------------

  Future<void> addToCart(ProductsModel product) async {
    try {
      final productDoc = fireStore
          .collection('cart')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('user-item')
          .doc(product.id.toString());

      final productSnapshot = await productDoc.get();

      if (productSnapshot.exists) {
        emit(CartFailureState(
            errMessage:
                "This item is already in your cart! 🛒 Need more? You can update the quantity at My cart."));
      } else {
        final productData = product.toJson();
        productData['quantity'] = 1; // تعيين الكمية الافتراضية

        await productDoc.set(productData);

        emit(CartSuccessState(
            succMessage:
                "Great choice! Your item has been added to the cart. 🎉"));
      }
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
