import 'package:ecommerce/ui/styles/colors.dart';
import 'package:ecommerce/ui/styles/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/styles/typography.dart';

class FilterView extends StatelessWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 335,
      ),
      padding: const EdgeInsets.symmetric(horizontal: p25, vertical: p45),
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.circular(r30),
        boxShadow: boxShadow3,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 37,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        color: cDarkBlue,
                        borderRadius: BorderRadius.circular(r10),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/close.svg',
                          color: cWhite,
                          width: i10,
                          height: i10,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: Text(
                      'Filter options',
                      style: sHeadline.copyWith(
                          color: cDarkBlue, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: IntrinsicWidth(
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: p20),
                        height: 37,
                        decoration: BoxDecoration(
                          color: cOrange,
                          borderRadius: BorderRadius.circular(r10),
                        ),
                        child: Center(
                          child: Text(
                            'Done',
                            style: sHeadline.copyWith(
                                color: cWhite, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
