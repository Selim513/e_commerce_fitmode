import 'package:dio/dio.dart';

class ApiServices {
  final String baseUrl = 'https://fakestoreapi.com/';
  final String baseUrlCategory = 'https://fakestoreapi.com/products/category/';
  final Dio dio;

  ApiServices(this.dio);

  Future<List<dynamic>> get({required String endPoint}) async {
    final res = await dio.get('$baseUrl$endPoint');
    return res.data;
  }

  Future<List<dynamic>> getByCategories({required String category}) async {
    final res = await dio.get('$baseUrlCategory$category');
    return res.data;
  }
}
