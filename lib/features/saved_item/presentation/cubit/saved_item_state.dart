import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';

class SavedItemState {}

class SavedItemInitial extends SavedItemState {}

class SavedItemSuccess extends SavedItemState {}

class SavedItemFailure extends SavedItemState {
  final String errMessage;

  SavedItemFailure({required this.errMessage});
}

class SavedItemLoading extends SavedItemState {}

class FetchSavedItem extends SavedItemState {
  final List<ProductsModel> product;

  FetchSavedItem({required this.product});
}

class DeletSavedItem extends SavedItemState {
  final String message;

  DeletSavedItem({required this.message});
}
