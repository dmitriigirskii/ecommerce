import 'package:ecommerce/features/seller/models/seller.dart';
import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/styles/global.dart';

class SellerCard extends StatelessWidget {
  const SellerCard({Key? key, required this.seller}) : super(key: key);

  final Seller seller;

  @override
  Widget build(BuildContext context) {
    final double cardWidth = (MediaQuery.of(context).size.width / 2);

    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/product/detail'),
      child: Container(
        width: cardWidth - safe - m10 / 2,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
        decoration: BoxDecoration(
          color: cWhite,
          borderRadius: BorderRadius.circular(r10),
          boxShadow: boxShadow2,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Image.network(
                  seller.picture,
                  height: 168,
                  errorBuilder: (context, error, stackTrace) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: p30),
                      child: Text('Image\n not found',
                          textAlign: TextAlign.center),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: p20,
                    right: p20,
                    bottom: p15,
                    top: p5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            seller.price_without_discount.toString(),
                            style: sCallout.copyWith(
                              color: cDarkBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: m10),
                          Text(
                            seller.discount_price.toString(),
                            style: sCaption2.copyWith(
                              color: cLight3,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: m5),
                      Text(
                        seller.title,
                        style: sCaption2,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),

            // Fovorite Button
            Positioned(
              top: m10,
              right: m15,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: cWhite,
                  shape: BoxShape.circle,
                  boxShadow: boxShadow1,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    seller.is_favorites == true
                        ? 'assets/icons/favorite_fill.svg'
                        : 'assets/icons/favorite_outline.svg',
                    width: i10,
                    height: i10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
