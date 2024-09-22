import 'package:dartz/dartz.dart';
import 'package:elevate_flutter_task/core/errors/failure.dart';
import 'package:elevate_flutter_task/features/product_list/data/models/product_model.dart';
import 'package:elevate_flutter_task/features/product_list/data/repos/product_list_repo.dart';

class ProductListRepoImplementation implements ProductListRepo{
  @override
  Future<Either<Failure, List<ProductModel>>> fetchProductsItems() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}