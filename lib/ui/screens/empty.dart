import 'package:flutter/material.dart';

import '../../features/cart/view/app_bar.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(slivers: [
        CartAppBar(),
        SliverFillRemaining(
          child: Center(
            child: Text('This is empty screen'),
          ),
        ),
      ]),
    );
  }
}
