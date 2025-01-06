import 'package:dio/dio.dart';

class ApiServices {
  final String baseUrl = 'https://fakestoreapi.com/';
  final Dio dio;

  ApiServices(this.dio);

  Future<List<dynamic>> get({required String endPoint}) async {
    final res = await dio.get('$baseUrl$endPoint');
    return res.data;
  }
}
