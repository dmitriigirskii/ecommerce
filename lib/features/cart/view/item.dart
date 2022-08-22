import 'package:ecommerce/features/cart/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/styles/colors.dart';
import '../../../ui/styles/global.dart';
import '../../../ui/styles/typography.dart';
import '../models/basket.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.item}) : super(key: key);

  final Basket item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(r10),
                ),
                child: Container(
                  width: 88,
                  height: 88,
                  child: Image.network(
                    item.images,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: m10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: sTitle3.copyWith(color: cWhite),
                    ),
                    const SizedBox(height: m5),
                    Text(
                      '\$${item.price}',
                      style: sTitle3.copyWith(color: cOrange),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: m30),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              height: 68,
              width: 26,
              decoration: const BoxDecoration(
                color: Color(0xFF282843),
                borderRadius: BorderRadius.all(
                  Radius.circular(r10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: SvgPicture.asset(
                      'assets/icons/minus.svg',
                      color: cWhite,
                      height: 2,
                    ),
                  ),
                  Text(
                    item.quantity.toString(),
                    style: sTitle3.copyWith(
                      color: cWhite,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/icons/plus.svg',
                      color: cWhite,
                      width: 9,
                      height: 9,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: m20),
            InkWell(
              onTap: () {
                context.read<CartBloc>().add(CartEventRemove(basket: item));
              },
              child: SvgPicture.asset(
                'assets/icons/trash.svg',
                color: Color(0xFF36364D),
                width: i14,
                height: i14,
              ),
            ),
          ],
        )
      ],
    );
  }
}
