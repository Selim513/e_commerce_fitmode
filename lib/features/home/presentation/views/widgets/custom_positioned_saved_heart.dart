import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    var products = widget.product;
    return Positioned(
      right: 15,
      top: 10,
      child: GestureDetector(
        onTap: () async {
          isSelected = !isSelected;
          setState(() {});
          final response =
              await Supabase.instance.client.from('saved_items').insert([
            {
              'user_id': Supabase
                  .instance.client.auth.currentUser?.id, // معرف المستخدم
              'product_id':
                  widget.product!.id, // معرف المنتج (يجب تعديله ديناميكيًا)
              'saved_at': DateTime.now().toIso8601String(),
              'image_url': products?.image ?? '',
              'product_title': products!.title ?? '',
              'product_price': products.price,
              'product_desc': products.description,
              'product_category': products.category ?? '',
              'product_review_count': products.rating?.count ?? 0,
              'product_review_rate': products.rating?.rate ?? 0.0,
            }
          ]).select();
        },
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: isSelected
              ? const Icon(CupertinoIcons.heart)
              : const Icon(CupertinoIcons.heart_fill, color: Colors.red),
        ),
      ),
    );
  }
}
