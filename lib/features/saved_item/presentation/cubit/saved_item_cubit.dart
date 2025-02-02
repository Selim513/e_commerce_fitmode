import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'saved_item_state.dart';

class SavedItemCubit extends Cubit<SavedItemState> {
  SavedItemCubit() : super(SavedItemInitial());

  bool isSelected = false;
  Future<void> checkIfSaved(ProductsModel? product) async {
    emit(SavedItemLoading());
    var userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId != null && product != null) {
      try {
        var doc = await FirebaseFirestore.instance
            .collection('saved_products')
            .doc(userId)
            .collection('products')
            .doc(product.id.toString())
            .get();
        if (doc.exists) {
          isSelected = true;
        }
        emit(SavedItemSuccess());
      } catch (e) {
        SavedItemFailure(errMessage: 'There is an error ${e.toString()}');
        print('Error checking if product is saved: $e');
      }
    }
  }

  Future<void> toggleSavedState(ProductsModel? product) async {
    emit(SavedItemLoading());
    var userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId == null || product == null) return;

    var productDoc = FirebaseFirestore.instance
        .collection('saved_products')
        .doc(userId)
        .collection('products')
        .doc(product.id.toString());

    try {
      if (isSelected) {
        // حذف المنتج إذا كان محفوظًا مسبقًا
        await productDoc.delete();
      } else {
        // إضافة المنتج إذا لم يكن محفوظًا
        await productDoc.set({
          'created_at': DateTime.now(),
          // استخدام أسماء الحقول التي يتوقعها الـ Model
          'id': product.id,
          'title': product.title,
          'image': product.image,
          'description': product.description,
          'rating': {
            'rate': product.rating?.rate ?? 0.0,
            'count': product.rating?.count ?? 0,
          },
          'price': product.price,
          'category': product.category,
        });
      }

      isSelected = !isSelected;
      await fetchSavedProduct(); // إعادة جلب البيانات المحدثة

      emit(SavedItemSuccess());
    } catch (e) {
      emit(SavedItemFailure(errMessage: 'There is an error ${e.toString()}'));
      print('Failed to update saved state: $e');
    }
  }

  fetchSavedProduct() async {
    var userId = FirebaseAuth.instance.currentUser?.uid;
    emit(SavedItemLoading());
    try {
      var querySnapShot = await FirebaseFirestore.instance
          .collection('saved_products')
          .doc(userId)
          .collection('products')
          .get();
      List<ProductsModel> savedProducts = querySnapShot.docs
          .map((doc) => ProductsModel.fromJson(doc.data()))
          .toList();
      emit(FetchSavedItem(product: savedProducts));
    } catch (e) {
      print('============ ${e.toString()}');
      emit(SavedItemFailure(errMessage: 'Errooor ${e.toString()}'));
    }
  }
}
