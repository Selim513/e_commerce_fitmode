import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/saved_item/presentation/cubit/saved_item_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavedItemCubit extends Cubit<SavedItemState> {
  SavedItemCubit() : super(SavedItemInitial());

  bool isSelected = false;
  //------------chekIfSaved----------
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
        emit(SavedItemFailure(
            errMessage: 'Error checking if product is saved: $e'));
        print('Error checking if product is saved: $e');
      }
    }
  }

  //-------Save item-----------------
  Future<void> saveItem(ProductsModel? product) async {
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
          'product_id': product.id,
          'product_image': product.image,
          'product_name': product.title,
          'product_rate': product.rating?.rate ?? 0.0,
          'product_reviews_count': product.rating?.count ?? 0,
          'product_desc': product.description,
        });
      }

      isSelected = !isSelected;
      emit(SavedItemSuccess());
    } catch (e) {
      emit(SavedItemFailure(errMessage: 'Failed to update saved state: $e'));
      print('Failed to update saved state: $e');
    }
  }
  //--------------------
}
