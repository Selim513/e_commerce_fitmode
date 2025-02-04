import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';

abstract class ProductState {}

class ProductInitialState extends ProductState {}

class ProductsSuccessState extends ProductState {
  final List<ProductsModel> products;

  ProductsSuccessState({required this.products});
}

class ProductsFailureState extends ProductState {
  final String errMessage;

  ProductsFailureState({required this.errMessage});
}

class ProductLoadingState extends ProductState {}

class GetBySearch extends ProductState {
  final List<ProductsModel> products;

  GetBySearch({required this.products});
}
