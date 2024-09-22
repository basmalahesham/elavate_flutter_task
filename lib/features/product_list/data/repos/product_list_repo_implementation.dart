import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:elevate_flutter_task/core/errors/failure.dart';
import 'package:elevate_flutter_task/core/utils/api_services.dart';
import 'package:elevate_flutter_task/features/product_list/data/models/product_model.dart';
import 'package:elevate_flutter_task/features/product_list/data/repos/product_list_repo.dart';

class ProductListRepoImplementation implements ProductListRepo {
  final ApiService apiService;

  ProductListRepoImplementation(this.apiService);

  @override
  Future<Either<Failure, List<ProductModel>>> fetchProducts() async {
    try {
      var data = await apiService.get();
      List<ProductModel> products =
          (data as List).map((item) => ProductModel.fromJson(item)).toList();
      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
