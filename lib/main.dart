import 'package:elevate_flutter_task/core/utils/service_locator.dart';
import 'package:elevate_flutter_task/features/product_list/data/repos/product_list_repo_implementation.dart';
import 'package:elevate_flutter_task/features/product_list/presentation/manager/product_list_cubit/product_list_cubit.dart';
import 'package:elevate_flutter_task/features/product_list/presentation/views/product_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductListCubit(
        getIt.get<ProductListRepoImplementation>(),
      )..fetchProducts(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductListView(),
      ),
    );
  }
}
