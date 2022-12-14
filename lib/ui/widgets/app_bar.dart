import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../features/filter/view/filter.dart';
import '../styles/typography.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarBrightness: Brightness.light,
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: InkWell(
        highlightColor: Colors.transparent,
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/location.svg',
              color: cOrange,
              width: i14,
              height: i14,
            ),
            const SizedBox(width: m10),
            Text(
              'Zihuatanejo, Gro',
              style: sSubhead.copyWith(color: cDarkBlue),
            ),
            const SizedBox(width: m10),
            SvgPicture.asset(
              'assets/icons/arrow_down.svg',
              color: cLight2,
              width: i10,
            ),
          ],
        ),
      ),
      leading: Container(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: safe),
          child: Row(
            children: [
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  showModalBottomSheet(
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return const FilterView();
                    },
                  );
                },
                icon: SvgPicture.asset(
                  'assets/icons/filter.svg',
                  color: cDarkBlue,
                  width: i14,
                  height: i14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
