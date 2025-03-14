import 'package:dio/dio.dart';
import 'package:e_commerce_fitmode/constant.dart';
import 'package:e_commerce_fitmode/core/errors/server_error.dart';
import 'package:e_commerce_fitmode/core/utils/api/api_services.dart';
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

  @override
  Future<Either<Failure, List<ProductsModel>>> fetchByCategories({required String category}
      ) async {
    try {
      var res = await apiServices.getByCategories(category: category);
      List<ProductsModel> categoriesList = [];
      for (var i = 0; i < res.length; i++) {
        categoriesList.add(ProductsModel.fromJson(res[i]));
      }
      
      return Right(categoriesList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerError.fromDioException(e));
      }
      return Left(ServerError(e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<ProductsModel>>> fetchBySearch({required String search}) async {
    try {
      var data = await apiServices.get(endPoint: apiProducts);
      
      List<ProductsModel> filteredList = data
          .where((item) =>
              item['title'].toString().toLowerCase().contains(search.toLowerCase()))
          .map((item) => ProductsModel.fromJson(item))
          .toList();

      return Right(filteredList);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerError.fromDioException(e));
      }
      return Left(ServerError(e.toString()));
    }
  }
}
