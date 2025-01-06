import 'package:dio/dio.dart';
import 'package:e_commerce_fitmode/constant.dart';
import 'package:e_commerce_fitmode/core/errors/server_error.dart';
import 'package:e_commerce_fitmode/core/utils/api_services.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:e_commerce_fitmode/features/home/data/repo/home_repo.dart';
import 'package:either_dart/src/either.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<ProductsModel>>> fetchAllProducts() async {
    try {
      var data = await apiServices.get(endPoint: apiProducts);
      List<ProductsModel> productsList = [];
      for (var i = 0; i < data.length; i++) {
        productsList.add(ProductsModel.fromJson(data[i]));
      }
      return Right(productsList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerError.fromDioException(e));
      }
      return Left(ServerError(e.toString()));
    }
  }
}
