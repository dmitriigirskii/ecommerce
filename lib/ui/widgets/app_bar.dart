import 'package:ecommerce/features/filter/cubit/filter_cubit.dart';
import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../styles/typography.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FilterCubit(),
      child: const CustomSliverAppBarView(),
    );
  }
}

class CustomSliverAppBarView extends StatelessWidget {
  const CustomSliverAppBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FilterCubit filterCubit =
        BlocProvider.of<FilterCubit>(context, listen: true);

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
            SizedBox(width: m10),
            Text(
              'Zihuatanejo, Gro',
              style: sSubhead.copyWith(color: cDarkBlue),
            ),
            SizedBox(width: m10),
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
                icon: SvgPicture.asset(
                  'assets/icons/filter.svg',
                  color: cDarkBlue,
                  width: i14,
                  height: i14,
                ),
                onPressed: () => filterCubit.toggle(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
