import 'package:e_commerce_fitmode/core/utils/app_colors.dart';
import 'package:e_commerce_fitmode/core/utils/app_fonts.dart';
import 'package:e_commerce_fitmode/core/widgets/custom_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class CustomProductConainer extends StatelessWidget {
  const CustomProductConainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.15,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.greycolor),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/product.png'),
            const Gap(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Regular Fit Slogan',
                        style: AppFontStyle.reqgularFont,
                        maxLines: 1,
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: AppColors.greycolor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'In Transit',
                          style: AppFontStyle.reqgularFont.copyWith(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Size L',
                    style: AppFontStyle.greyFont15,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        r'$ 1,190',
                        style: AppFontStyle.reqgularFont
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      CustomElevatedButton(
                          onPress: () {},
                          widget: Text(
                            'Track Order',
                            style: AppFontStyle.buttonTextStyle,
                          ))
                      // ElevatedButton(
                      //     onPressed: () {}, child: const Text('Track Order'))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
