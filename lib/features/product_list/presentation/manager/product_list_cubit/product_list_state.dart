part of 'product_list_cubit.dart';

@immutable
sealed class ProductListState {}

final class ProductListInitial extends ProductListState {}
final class ProductListLoading extends ProductListState {}
final class ProductListFailure extends ProductListState {
  final String errMessage;

  ProductListFailure(this.errMessage);
}
final class ProductListSuccess extends ProductListState {
  final List<ProductModel> products;

  ProductListSuccess(this.products);
}

