import 'package:flutter/material.dart';

import '../../features/navigation/view/navigation_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Cart'),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
