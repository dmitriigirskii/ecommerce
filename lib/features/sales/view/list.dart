import 'package:ecommerce/features/sales/bloc/sale_bloc.dart';
import 'package:ecommerce/features/sales/view/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui/styles/global.dart';
import '../models/sale.dart';

class SalesList extends StatelessWidget {
  const SalesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaleBloc, SaleState>(
      builder: (context, state) {
        switch (state.status) {
          case SaleStatus.failure:
            return const Center(child: Text('failed to fetch sales'));

          case SaleStatus.success:
            if (state.sales.isEmpty) {
              return const Center(child: Text('no sales'));
            }
            return SalesListView(sales: state.sales);

          default:
            return const Center(child: CupertinoActivityIndicator(radius: i14));
        }
      },
    );
  }
}

class SalesListView extends StatelessWidget {
  const SalesListView({Key? key, required this.sales}) : super(key: key);

  final List<Sale> sales;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 182 + m20,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return SalesCard(sale: sales[index]);
        },
        itemCount: sales.length,
      ),
    );
  }
}
