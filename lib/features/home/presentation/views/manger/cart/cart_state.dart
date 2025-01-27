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
  final List<Map<String, dynamic>> productItem;

  CartFechItemSuccess({required this.productItem});
}

class CartFechItemFailure extends CartState {
  final String errMessage;

  CartFechItemFailure({required this.errMessage});
}

class CartFechItemLoading extends CartState {}
