import 'package:ecommerce/features/seller/bloc/seller_bloc.dart';
import 'package:ecommerce/features/seller/view/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui/styles/global.dart';
import '../models/seller.dart';

class SellerList extends StatelessWidget {
  const SellerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SellerBloc, SellerState>(
      builder: (context, state) {
        switch (state.status) {
          case SellerStatus.failure:
            return const Center(child: Text('failed to fetch sellers'));

          case SellerStatus.success:
            if (state.sellers.isEmpty) {
              return const Center(child: Text('no sellers'));
            }
            return SellerListView(sellers: state.sellers);

          default:
            return const Center(child: CupertinoActivityIndicator(radius: i14));
        }
      },
    );
  }
}

class SellerListView extends StatelessWidget {
  const SellerListView({Key? key, required this.sellers}) : super(key: key);

  final List<Seller> sellers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: safe, vertical: safe),
      child: Wrap(
        spacing: m10,
        runSpacing: m10,
        children: List.generate(
            sellers.length, (index) => SellerCard(seller: sellers[index])),
      ),
    );
  }
}
