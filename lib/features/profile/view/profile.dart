import 'package:flutter/material.dart';

import '../../navigation/view/navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
