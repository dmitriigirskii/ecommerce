import 'package:ecommerce/features/seller/view/card.dart';
import 'package:flutter/material.dart';

import '../../../ui/styles/global.dart';

class SellerList extends StatelessWidget {
  const SellerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: safe, vertical: safe),
      child: Wrap(
        spacing: m10,
        runSpacing: m10,
        children: [
          SellerCard(),
          SellerCard(),
          SellerCard(),
          SellerCard(),
          SellerCard(),
          SellerCard(),
        ],
      ),
    );
  }
}
