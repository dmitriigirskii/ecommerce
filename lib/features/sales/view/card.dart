import 'package:ecommerce/features/product/view/detail.dart';
import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/material.dart';

import '../../../ui/styles/global.dart';
import '../models/sale.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({Key? key, required this.sale}) : super(key: key);

  final Sale sale;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: safe, vertical: m10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductDetail()),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(r10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(sale.picture),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(p20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (sale.is_new ?? false)
                    Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        color: cOrange,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          'New',
                          style: sCaption2.copyWith(
                            color: cWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: m20),
                  Text(sale.title, style: sTitle1.copyWith(color: cWhite)),
                  const SizedBox(height: m5),
                  Text(sale.subtitle, style: sCaption1.copyWith(color: cWhite)),
                  const SizedBox(height: m20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: p30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(r5),
                      color: cWhite,
                    ),
                    height: 24,
                    child: IntrinsicWidth(
                      child: Center(
                        child: Text(
                          'Buy now!',
                          style: sCaption1.copyWith(
                            color: cDarkBlue,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
