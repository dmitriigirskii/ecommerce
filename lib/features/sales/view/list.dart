import 'package:ecommerce/features/sales/view/card.dart';
import 'package:flutter/material.dart';

import '../../../ui/styles/global.dart';

class SalesList extends StatelessWidget {
  const SalesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 182 + m10,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return SalesCard();
        },
        itemCount: 3,
      ),
    );
  }
}
