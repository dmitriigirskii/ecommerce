import 'package:ecommerce/features/cart/view/app_bar.dart';
import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../styles/global.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
              hasScrollBody: false,
              child: Container(
                padding: EdgeInsets.all(p25),
                decoration: BoxDecoration(
                  color: cDarkBlue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(r30),
                    topRight: Radius.circular(r30),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: m40),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(r10),
                          ),
                          child: Container(
                            width: 88,
                            height: 88,
                            child: Image.network(
                              'https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: m10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Galaxy Note 20\nUltra',
                              style: sTitle3.copyWith(color: cWhite),
                            ),
                            const SizedBox(height: m5),
                            Text(
                              '\$3000.00',
                              style: sTitle3.copyWith(color: cOrange),
                            ),
                          ],
                        ),
                        const SizedBox(width: m30),
                        const Spacer(),
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
                                '2',
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
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/icons/trash.svg',
                            color: Color(0xFF36364D),
                            width: i14,
                            height: i14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: m40),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(r10),
                          ),
                          child: Container(
                            width: 88,
                            height: 88,
                            child: Image.network(
                              'https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: m10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Galaxy Note 20\nUltra',
                              style: sTitle3.copyWith(color: cWhite),
                            ),
                            const SizedBox(height: m5),
                            Text(
                              '\$3000.00',
                              style: sTitle3.copyWith(color: cOrange),
                            ),
                          ],
                        ),
                        const SizedBox(width: m30),
                        const Spacer(),
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
                                '2',
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
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/icons/trash.svg',
                            color: Color(0xFF36364D),
                            width: i14,
                            height: i14,
                          ),
                        ),
                      ],
                    ),
                  ],
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
                            '\$6,000 us',
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
                            'Free',
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
                        Text(
                          'Checkout',
                          style: sTitle3.copyWith(
                            color: cWhite,
                            fontWeight: FontWeight.w700,
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
