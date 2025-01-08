import 'package:e_commerce_fitmode/features/home/data/repo/home_repo_impl.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/manger/get_all_products_cubit.dart/home_state_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsCubit extends Cubit<ProductState> {
  ProductsCubit(this.homeRepo) : super(ProductInitialState());
  final HomeRepoImpl homeRepo;
  Future<void> getAllProduct() async {
    var result = await homeRepo.fetchAllProducts();
    result.fold(
      (failure) => emit(ProductsFailureState(errMessage: failure.errMessage)),
      (success) => emit(ProductsSuccessState(products: success)),
    );
  }

  Future<void> getByCategories({required String category}) async {
    var data = await homeRepo.fetchByCategories(category: category);
    data.fold(
      (failure) => emit(ProductsFailureState(errMessage: failure.errMessage)),
      (data) => emit(ProductsSuccessState(products: data)),
    );
  }
}
