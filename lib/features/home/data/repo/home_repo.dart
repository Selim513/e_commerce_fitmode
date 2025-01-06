import 'package:e_commerce_fitmode/core/errors/server_error.dart';
import 'package:e_commerce_fitmode/features/home/data/home_model/products_model/products_model.dart';
import 'package:either_dart/either.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductsModel>>> fetchAllProducts();
}
