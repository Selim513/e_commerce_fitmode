import 'dart:developer';

import 'package:e_commerce_fitmode/core/utils/api/api_key.dart';
import 'package:e_commerce_fitmode/features/chekout/data/model/amount_model/amount_model.dart';
import 'package:e_commerce_fitmode/features/chekout/data/model/amount_model/details.dart';
import 'package:e_commerce_fitmode/features/chekout/data/model/checkout_order_details_model/checkout_order_details.dart';
import 'package:e_commerce_fitmode/features/chekout/data/model/order_list_model/item.dart';
import 'package:e_commerce_fitmode/features/chekout/data/model/order_list_model/order_list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

void payPalMehodCheckout(
    BuildContext context, CheckOutOrderDetails checkoutDetails) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => PaypalCheckoutView(
      sandboxMode: true,
      clientId: ApiKeys.clietnId,
      secretKey: ApiKeys.paypalSecretKey,
      transactions: [
        {
          "amount": AmountModel(
            currency: "USD",
            details: Details(
                shipping: checkoutDetails.shipping,
                shippingDiscount: 0,
                subtotal: checkoutDetails.subtotal),
            total: checkoutDetails.total,
          ).toJson(),
          "description": "The payment transaction description.",
          "item_list": OrderListModel(items: [
            Item(
              currency: "USD",
              name: "Pineapple",
              price: "12",
              quantity: 5,
            ),
            Item(name: "APPLE", currency: "USD", price: "10", quantity: 4)
          ]).toJson()
        }
      ],
      note: "Contact us for any questions on your order.",
      onSuccess: (Map params) async {
        log("onSuccess: $params");
        Navigator.pop(context);
      },
      onError: (error) {
        log("onError: $error");
        Navigator.pop(context);
      },
      onCancel: () {
        print('cancelled:');
        Navigator.pop(context);
      },
    ),
  ));
}
