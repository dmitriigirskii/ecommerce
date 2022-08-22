import 'package:ecommerce/features/cart/bloc/cart_bloc.dart';
import 'package:ecommerce/ui/styles/global.dart';
import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/styles/app.dart';
import '../../../ui/styles/colors.dart';
import '../cubit/tabs_cubit.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TabsCubit tabsCubit = context.read<TabsCubit>();

    return BlocBuilder<TabsCubit, TabsState>(builder: (context, state) {
      if (state is TabsInitial) {
        return Container(
          height: bottomBarHeight,
          decoration: BoxDecoration(
            color: cDarkBlue,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(r30),
              topRight: Radius.circular(r30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => tabsCubit.setIndex(0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/dot.svg'),
                    const SizedBox(width: m10),
                    Text(
                      'Explorer',
                      style: sSubhead.copyWith(
                        color: cWhite,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/cart'),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/bag.svg',
                      color: cWhite,
                      width: i18,
                      height: i18,
                    ),
                    BlocConsumer<CartBloc, CartState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          if (state.cart?.basket.length != null) {
                            return Positioned(
                              top: -8,
                              right: -8,
                              child: Container(
                                width: 16,
                                height: 16,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    state.cart?.basket.length.toString() ?? '0',
                                    style: sCaption2.copyWith(
                                        color: cWhite,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            );
                          }

                          return SizedBox.shrink();
                        })
                  ],
                ),
              ),
              InkWell(
                onTap: () => tabsCubit.setIndex(2),
                child: SvgPicture.asset(
                  'assets/icons/favorite_outline.svg',
                  color: cWhite,
                  width: i18,
                  height: i18,
                ),
              ),
              InkWell(
                onTap: () => tabsCubit.setIndex(3),
                child: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  color: cWhite,
                  width: i18,
                  height: i18,
                ),
              ),
            ],
          ),
        );
      }

      return const SizedBox.shrink();
    });
  }
}
