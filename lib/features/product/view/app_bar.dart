import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/styles/colors.dart';
import '../../../ui/styles/global.dart';
import '../../../ui/styles/typography.dart';
import '../../cart/bloc/cart_bloc.dart';

class ProductDetailAppBar extends StatelessWidget {
  const ProductDetailAppBar({Key? key}) : super(key: key);

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
            Text(
              'Product Details',
              style: sHeadline.copyWith(color: cDarkBlue),
            ),
          ],
        ),
      ),
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
              IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => Navigator.pushNamed(context, '/cart'),
                icon: Container(
                  width: 37,
                  height: 37,
                  decoration: BoxDecoration(
                    color: cOrange,
                    borderRadius: BorderRadius.circular(r10),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          'assets/icons/bag.svg',
                          color: cWhite,
                          width: i14,
                          height: i14,
                        ),
                      ),
                      BlocConsumer<CartBloc, CartState>(
                          listener: (context, state) {},
                          builder: (context, state) {
                            if (state.cart?.basket.length != null) {
                              return Positioned(
                                top: -5,
                                right: -5,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      state.cart?.basket.length.toString() ??
                                          '0',
                                      style: sCaption2.copyWith(
                                          color: cWhite,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              );
                            }

                            return const SizedBox.shrink();
                          })
                    ],
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
