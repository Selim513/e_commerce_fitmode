import 'package:dio/dio.dart';

class ApiServices {
  static String baseUrl = 'https://fakestoreapi.com/';
  static String baseUrlCategory = '${baseUrl}products/category/';
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
