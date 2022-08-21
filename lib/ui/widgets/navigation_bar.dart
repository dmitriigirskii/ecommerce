import 'package:ecommerce/ui/styles/global.dart';
import 'package:flutter/material.dart';

import '../styles/app.dart';
import '../styles/colors.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bottomBarHeight,
      decoration: BoxDecoration(
        color: cDarkBlue,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(r30),
          topRight: Radius.circular(r30),
        ),
      ),
    );
  }
}
