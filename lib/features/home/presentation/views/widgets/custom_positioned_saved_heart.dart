import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
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

