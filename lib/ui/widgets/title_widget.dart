import 'package:ecommerce/ui/screens/empty.dart';
import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/global.dart';
import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
    required this.label,
  }) : super(key: key);

  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: safe),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: sTitle1.copyWith(color: cDarkBlue),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EmptyScreen()),
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Text(
              label,
              style: sSubhead.copyWith(color: cOrange),
            ),
          ),
        ],
      ),
    );
  }
}
