import 'package:ecommerce/features/category/cubit/category_cubit.dart';
import 'package:ecommerce/features/navigation/view/navigation_bar.dart';
import 'package:ecommerce/features/sales/bloc/sale_bloc.dart';
import 'package:ecommerce/features/search/view/search.dart';
import 'package:ecommerce/features/seller/bloc/seller_bloc.dart';
import 'package:ecommerce/features/seller/service/seller.dart';
import 'package:ecommerce/ui/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/category/view/list.dart';
import '../../features/sales/service/sale.dart';
import '../../features/sales/view/list.dart';
import '../../features/seller/view/list.dart';
import '../widgets/app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (_) => CategoryCubit(),
      ),
      BlocProvider(
        create: (_) => SaleBloc(saleService: SaleService())..add(SaleEvent()),
      ),
      BlocProvider(
        create: (_) =>
            SellerBloc(sellerService: SellerService())..add(SellerEvent()),
      ),
    ], child: const MainScreenView());
  }
}

class MainScreenView extends StatelessWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        const CustomSliverAppBar(),
        SliverList(
          delegate: SliverChildListDelegate([
            // Categories
            const TitleWidget(title: 'Select Category', label: 'view all'),
            const CategoryList(),

            // Search
            const Search(),

            // Hot Sales
            const TitleWidget(title: 'Hot Sales', label: 'see more'),
            const SalesList(),

            // Best Sellers
            const TitleWidget(title: 'Best Seller', label: 'see more'),
            const SellerList(),
          ]),
        )
      ]),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
