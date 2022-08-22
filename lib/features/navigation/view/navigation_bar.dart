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
                child: state.index == 0
                    ? itemExpand('Explorer')
                    : itemMini('assets/icons/qr.svg'),
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/cart'),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    state.index == 1
                        ? itemExpand('Bag')
                        : itemMini('assets/icons/bag.svg'),
                    BlocConsumer<CartBloc, CartState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          if (state.cart?.basket.length != null &&
                              state.cart!.basket.isNotEmpty) {
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
                child: state.index == 2
                    ? itemExpand('Favorite')
                    : itemMini('assets/icons/favorite_outline.svg'),
              ),
              InkWell(
                onTap: () => tabsCubit.setIndex(3),
                child: state.index == 3
                    ? itemExpand('Profile')
                    : itemMini('assets/icons/profile.svg'),
              ),
            ],
          ),
        );
      }

      return const SizedBox.shrink();
    });
  }

  Widget itemMini(String asset) {
    return SvgPicture.asset(
      asset,
      color: cWhite,
      width: i18,
      height: i18,
    );
  }

  Widget itemExpand(String title) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/dot.svg'),
        const SizedBox(width: m10),
        Text(
          title,
          style: sSubhead.copyWith(
            color: cWhite,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
