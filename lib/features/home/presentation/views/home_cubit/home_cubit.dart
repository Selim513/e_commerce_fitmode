import 'package:e_commerce_fitmode/features/home/data/repo/home_repo_impl.dart';
import 'package:e_commerce_fitmode/features/home/presentation/views/home_cubit/home_state_cubit.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProductCubit extends Cubit<AllProductState> {
  AllProductCubit(this.homeRepo) : super(AllProductInitialState());
  final HomeRepoImpl homeRepo;
  Future<void> getAllProduct() async {
    var result = homeRepo.fetchAllProducts();
    result.fold(
      (failure) => emit(AllProductFailureState(errMessage: failure.errMessage)),
      (success) => emit(AllProductSuccessState(products: success)),
    );  
  }
}
