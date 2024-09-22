import 'package:elevate_flutter_task/core/utils/widgets/custom_error_widget.dart';
import 'package:elevate_flutter_task/core/utils/widgets/custom_loading_indicator.dart';
import 'package:elevate_flutter_task/features/product_list/presentation/manager/product_list_cubit/product_list_cubit.dart';
import 'package:elevate_flutter_task/features/product_list/presentation/views/widgets/custom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListViewBody extends StatelessWidget {
  const ProductListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<ProductListCubit, ProductListState>(
        builder: (context, state) {
          if (state is ProductListSuccess) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: .66,
              ),
              itemBuilder: (context, index) => CustomProduct(
                productModel: state.products[index],
              ),
              itemCount: state.products.length,
            );
          } else if (state is ProductListFailure) {
            return CustomErrorWidget(
              errMessage: state.errMessage,
            );
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
