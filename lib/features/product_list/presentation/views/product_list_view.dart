import 'package:elevate_flutter_task/features/product_list/presentation/views/widgets/product_list_view_body.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductListViewBody(),
    );
  }
}
