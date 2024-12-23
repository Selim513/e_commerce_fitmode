import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomPositionedSavedHeart extends StatefulWidget {
  const CustomPositionedSavedHeart({
    super.key,
  });

  @override
  State<CustomPositionedSavedHeart> createState() =>
      _CustomPositionedSavedHeartState();
}

class _CustomPositionedSavedHeartState
    extends State<CustomPositionedSavedHeart> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
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
              'product_id': 1, // معرف المنتج (يجب تعديله ديناميكيًا)
              'saved_at': DateTime.now().toIso8601String(),
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
