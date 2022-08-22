import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/styles/colors.dart';
import '../../../ui/styles/global.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarBrightness: Brightness.light,
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      leadingWidth: 64,
      leading: Padding(
        padding: const EdgeInsets.only(left: safe),
        child: Row(
          children: [
            IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () => Navigator.pop(context),
              icon: Container(
                width: 37,
                height: 37,
                decoration: BoxDecoration(
                  color: cDarkBlue,
                  borderRadius: BorderRadius.circular(r10),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/arrow_left.svg',
                    color: cWhite,
                    width: i14,
                    height: i14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: safe),
          child: Row(
            children: [
              Text('Add address', style: sSubhead.copyWith(color: cDarkBlue)),
              const SizedBox(width: m10),
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: Container(
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                    color: cOrange,
                    borderRadius: BorderRadius.circular(r10),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/location.svg',
                      color: cWhite,
                      width: i14,
                      height: i14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
