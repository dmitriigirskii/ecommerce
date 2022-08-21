import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/material.dart';

import '../../../ui/styles/global.dart';

class SellerCard extends StatelessWidget {
  const SellerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double cardWidth = (MediaQuery.of(context).size.width / 2);

    return Container(
      width: cardWidth - safe - m10 / 2,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(r10),
        boxShadow: boxShadow2,
      ),
      child: Column(
        children: [
          Image.network(
            'https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg',
          ),
          Padding(
            padding: const EdgeInsets.only(left: p20, right: p20, bottom: p15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$1,047',
                      style: sCallout.copyWith(
                        color: cDarkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: m10),
                    Text(
                      '\$1,500',
                      style: sCaption2.copyWith(
                        color: cLight3,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: m5),
                const Text(
                  'Samsung Galaxy s20 Ultra',
                  style: sCaption2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
