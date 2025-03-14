import 'package:e_commerce_fitmode/features/chekout/presentation/views/address_view.dart';
import 'package:flutter/widgets.dart';

class AccountModel {
  final String icon;
  final String title;
  final Widget screen;

  AccountModel({required this.screen, required this.icon, required this.title});
}

List<AccountModel> accountDetailsList = [
  AccountModel(icon: 'order', title: 'My Orders', screen: const AddressView()),
  AccountModel(
      icon: 'Details', title: 'My Details', screen: const AddressView()),
  AccountModel(
      icon: 'Address', title: 'Address Book', screen: const AddressView()),
  AccountModel(
      icon: 'Card', title: 'Payment Methods', screen: const AddressView()),
  AccountModel(
      icon: 'Bell', title: 'Notifications', screen: const AddressView()),
];
