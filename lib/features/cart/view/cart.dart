import 'package:ecommerce/features/cart/bloc/cart_bloc.dart';
import 'package:ecommerce/features/cart/view/app_bar.dart';
import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui/styles/global.dart';
import '../models/cart.dart';
import 'item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        switch (state.status) {
          case CartStatus.failure:
            return const Center(child: Text('failed to fetch cart'));

          case CartStatus.success:
            if (state.cart == null) {
              return const Center(child: Text('no cart'));
            }
            return CartScreenView(cart: state.cart!);

          default:
            return const Center(child: CupertinoActivityIndicator(radius: i14));
        }
      },
    );
  }
}

class CartScreenView extends StatelessWidget {
  const CartScreenView({Key? key, required this.cart}) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(slivers: [
            const CartAppBar(),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: const EdgeInsets.all(p40),
                  child: Text(
                    'My Cart',
                    style: sLargeTitle.copyWith(
                        color: cDarkBlue, fontWeight: FontWeight.w700),
                  ),
                ),
              ]),
            ),
            SliverFillRemaining(
              hasScrollBody: true,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: p25),
                decoration: BoxDecoration(
                  color: cDarkBlue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(r30),
                    topRight: Radius.circular(r30),
                  ),
                ),
                child: cart.basket.isNotEmpty
                    ? ListView.separated(
                        padding: EdgeInsets.only(top: p25 + p40, bottom: p25),
                        shrinkWrap: true,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: m30);
                        },
                        itemCount: cart.basket.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CartItem(
                            item: cart.basket[index],
                          );
                        },
                      )
                    : Center(
                        child: Text(
                          'No items in cart',
                          style: sCallout.copyWith(color: cWhite),
                        ),
                      ),
              ),
            ),
          ]),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(p30),
                  decoration: BoxDecoration(
                    color: cDarkBlue,
                    border: Border(
                      top: BorderSide(width: 1, color: cWhite.withOpacity(0.2)),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: sSubhead.copyWith(color: cWhite),
                          ),
                          Text(
                            '\$${cart.total} us',
                            style: sSubhead.copyWith(
                              color: cWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: m10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery',
                            style: sSubhead.copyWith(color: cWhite),
                          ),
                          Text(
                            cart.delivery,
                            style: sSubhead.copyWith(
                              color: cWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                // Button checkout
                Container(
                  decoration: BoxDecoration(
                    color: cDarkBlue,
                    border: Border(
                      top: BorderSide(width: 1, color: cWhite.withOpacity(0.2)),
                    ),
                  ),
                  padding: const EdgeInsets.all(p30),
                  child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: cOrange,
                      borderRadius: BorderRadius.circular(r10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/empty'),
                          child: Text(
                            'Checkout',
                            style: sTitle3.copyWith(
                              color: cWhite,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
