

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPositionedSavedHeart extends StatefulWidget {
  const CustomPositionedSavedHeart({
    super.key,
    required this.product,
  });
  final ProductsModel? product;

  @override
  State<CustomPositionedSavedHeart> createState() =>
      _CustomPositionedSavedHeartState();
}

class _CustomPositionedSavedHeartState
    extends State<CustomPositionedSavedHeart> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    _checkIfSaved();
  }

  Future<void> _checkIfSaved() async {
    var userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId != null && widget.product != null) {
      try {
        var doc = await FirebaseFirestore.instance
            .collection('saved_products')
            .doc(userId)
            .collection('products')
            .doc(widget.product!.id.toString())
            .get();
        if (doc.exists) {
          setState(() {
            isSelected = true;
          });
        }
      } catch (e) {
        print('Error checking if product is saved: $e');
      }
    }
  }

  Future<void> _toggleSavedState() async {
    var userId = FirebaseAuth.instance.currentUser?.uid;
    if (userId == null || widget.product == null) return;

    var productDoc = FirebaseFirestore.instance
        .collection('saved_products')
        .doc(userId)
        .collection('products')
        .doc(widget.product!.id.toString());

    try {
      if (isSelected) {
        // حذف المنتج إذا كان محفوظًا مسبقًا
        await productDoc.delete();
      } else {
        // إضافة المنتج إذا لم يكن محفوظًا
        await productDoc.set({
          'created_at': DateTime.now(),
          'product_id': widget.product!.id,
          'product_image': widget.product!.image,
          'product_name': widget.product!.title,
          'product_rate': widget.product!.rating?.rate ?? 0.0,
          'product_reviews_count': widget.product!.rating?.count ?? 0,
          'product_desc': widget.product!.description,
        });
      }

      setState(() {
        isSelected = !isSelected;
      });
    } catch (e) {
      print('Failed to update saved state: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      top: 10,
      child: GestureDetector(
        onTap: _toggleSavedState,
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: isSelected
              ? const Icon(CupertinoIcons.heart_fill, color: Colors.red)
              : const Icon(CupertinoIcons.heart),
        ),
      ),
    );
  }
}
