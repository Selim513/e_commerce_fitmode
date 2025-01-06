import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';

abstract class AllProductState {}

class AllProductInitialState extends AllProductState {}

class AllProductSuccessState extends AllProductState {
  final List<ProductsModel> products;

  AllProductSuccessState({required this.products});
}

class AllProductFailureState extends AllProductState {
  final String errMessage;

  AllProductFailureState({required this.errMessage});
}

class AllProductLoadingState extends AllProductState {}
