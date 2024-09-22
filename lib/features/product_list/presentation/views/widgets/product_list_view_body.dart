import 'package:elevate_flutter_task/features/product_list/presentation/views/widgets/custom_product.dart';
import 'package:flutter/material.dart';

class ProductListViewBody extends StatelessWidget {
  const ProductListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) => const CustomProduct(),
        itemCount: 10,
      ),
    );
  }
}
