// import 'package:flutter/material.dart';

// class CustomMyCartProductImage extends StatelessWidget {
//   const CustomMyCartProductImage({
//     super.key,
//     required this.image,
//   });
//   final String image;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.sizeOf(context).height * 0.1,
//       child: Image.network(
//           'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg'),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomMyCartProductImage extends StatelessWidget {
  const CustomMyCartProductImage({
    super.key,
    required this.image,
  });

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.12,
      width: MediaQuery.sizeOf(context).width * 0.2, // ضبط العرض
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0), // لإضافة زوايا مستديرة
        color: Colors.grey[200], // لون خلفية افتراضي
        image: image != null && image!.isNotEmpty
            ? DecorationImage(
                image: NetworkImage(image!),
                fit: BoxFit.cover, // لتلائم الصورة المساحة بدون تجاوز
              )
            : null,
      ),
      child: image == null || image!.isEmpty
          ? const Center(
              child: Icon(
                Icons.image_not_supported,
                size: 40,
                color: Colors.grey,
              ),
            )
          : null,
    );
  }
}
