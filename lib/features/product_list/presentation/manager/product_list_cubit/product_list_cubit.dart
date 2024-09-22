import 'package:bloc/bloc.dart';
import 'package:elevate_flutter_task/features/product_list/data/models/product_model.dart';
import 'package:elevate_flutter_task/features/product_list/data/repos/product_list_repo.dart';
import 'package:meta/meta.dart';

part 'product_list_state.dart';

class ProductListCubit extends Cubit<ProductListState> {
  ProductListCubit(this.productListRepo) : super(ProductListInitial());
  final ProductListRepo productListRepo;
  Future<void> fetchProducts() async {
    emit(ProductListLoading());
    var result = await productListRepo.fetchProducts();
    result.fold((failure) {
      emit(ProductListFailure(failure.errMessage));
    }, (products) {
      emit(ProductListSuccess(products));
    });
  }
}
