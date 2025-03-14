import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class PaymentMethodModel {
  final String title;
  final IconData? icon;

  PaymentMethodModel({required this.title, required this.icon});
}

final List<PaymentMethodModel> paymetnMethod = [
  PaymentMethodModel(title: 'Card', icon: Icons.credit_card),
  PaymentMethodModel(title: 'Cash', icon: FluentIcons.money_16_filled),
  PaymentMethodModel(title: 'PayPal', icon: Icons.paypal)
];
