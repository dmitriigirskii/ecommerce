import 'package:flutter/material.dart';

import '../../features/navigation/view/navigation_bar.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Favorite'),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
