import 'package:dartz/dartz.dart';
import 'package:elevate_flutter_task/core/errors/failure.dart';
import 'package:elevate_flutter_task/features/product_list/data/models/product_model.dart';

abstract class ProductListRepo {
  Future<Either<Failure, List<ProductModel>>> fetchProductsItems();
}