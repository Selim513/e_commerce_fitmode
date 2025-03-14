import 'package:dio/dio.dart';
import 'package:e_commerce_fitmode/core/utils/api/api_services.dart';
import 'package:e_commerce_fitmode/features/home/data/repo/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiServices>()));
}
