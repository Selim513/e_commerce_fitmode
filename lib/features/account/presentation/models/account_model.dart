class AccountModel {
  final String icon;
  final String title;

  AccountModel({required this.icon, required this.title});
}

List<AccountModel> accountDetailsList = [
  AccountModel(icon: 'order', title: 'My Orders'),
  AccountModel(icon: 'Details', title: 'My Details'),
  AccountModel(icon: 'Address', title: 'Address Book'),
  AccountModel(icon: 'Card', title: 'Payment Methods'),
  AccountModel(icon: 'Bell', title: 'Notifications'),
];
