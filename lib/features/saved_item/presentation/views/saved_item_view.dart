import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_primary_appbar.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/notification/presentation/views/widgets/custom_no_notification_body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../home/data/home_model/products_model/rating.dart';
import 'widgets/custom_saved_product_item_gridview.dart';

class SavedItemView extends StatelessWidget {
  const SavedItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomPrimariyAppBar(
        appBarTitle: 'Saved Item',
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: getSavedProducts(), // استخدام Stream للحصول على التحديثات الحية
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          var savedProducts = snapshot.data?.docs;
          if (savedProducts == null || savedProducts.isEmpty) {
            return const CustomNoDatataWidget(
              iconName: 'Heart-duotone',
              title: 'No saved items',
              subTitle:
                  'You don’t have any saved items.\n Go to home and add some.',
            );
          }

          List<ProductsModel> productList = savedProducts.map((doc) {
            return ProductsModel(
              id: doc['product_id'],
              image: doc['product_image'],
              title: doc['product_name'],
              description: doc['product_desc'],
              rating: Rating(
                rate: doc['product_rate'] ??
                    0.0, // إذا كانت القيمة غير موجودة سيتم تعيينها إلى 0.0
                count: doc['product_reviews_count'] ??
                    0, // إذا كانت القيمة غير موجودة سيتم تعيينها إلى 0
              ),
            );
          }).toList();

          return CustomSavedProductItem(product: productList);
        },
      ),
    );
  }
}

Stream<QuerySnapshot> getSavedProducts() {
  var userId = FirebaseAuth.instance.currentUser?.uid;

  if (userId == null) {
    return const Stream.empty();
  }

  try {
    return FirebaseFirestore.instance
        .collection('saved_products')
        .doc(userId)
        .collection('products')
        .snapshots(); // استرجاع البيانات بشكل مستمر من Firestore
  } catch (e) {
    print('Error fetching saved products: $e');
    return const Stream.empty();
  }
}
