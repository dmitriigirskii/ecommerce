import 'package:flutter/material.dart';

import '../../../ui/styles/global.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: safe, vertical: m10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(r10),
      ),
    );
  }
}
