import 'package:dio/dio.dart';
import 'package:elevate_flutter_task/core/utils/api_services.dart';
import 'package:elevate_flutter_task/features/product_list/data/repos/product_list_repo_implementation.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<ProductListRepoImplementation>(
    ProductListRepoImplementation(
      getIt.get<ApiService>(),
    ),
  );
}