import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';

class CartState {}

class CartInitial extends CartState {}

class CartSuccessState extends CartState {
  final String succMessage;

  CartSuccessState({required this.succMessage});
}

class CartFailureState extends CartState {
  final String errMessage;

  CartFailureState({required this.errMessage});
}

//-------------Cart fetch item
class CartFechItemSuccess extends CartState {
  final List<ProductsModel> productItem;

  CartFechItemSuccess({required this.productItem});
}

class CartFechItemFailure extends CartState {
  final String errMessage;

  CartFechItemFailure({required this.errMessage});
}

class CartFechItemLoading extends CartState {}

//--------delet-------
class CartDeletProductSuccess extends CartState {
  final String succMessage;

  CartDeletProductSuccess({required this.succMessage});
}

class CartDeletProductFailure extends CartState {
  final String errMessage;

  CartDeletProductFailure({required this.errMessage});
}

//-----------Quantity------
class CartUpdateQuantitySuccess extends CartState {}

class CartUpdateQuantityFailure extends CartState {
  final String errMessage;

  CartUpdateQuantityFailure({required this.errMessage});
}
