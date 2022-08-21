import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/styles/colors.dart';
import '../../../ui/styles/global.dart';
import '../../../ui/styles/typography.dart';
import '../../category/models/model.dart';

class FilterList extends StatelessWidget {
  const FilterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Brand filter
        Text(
          'Brand',
          style: sHeadline.copyWith(
            color: cDarkBlue,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: m10),
        Container(
          height: 37,
          padding: const EdgeInsets.symmetric(horizontal: p15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(r5),
            border: Border.all(
              color: cGray1,
              width: 1,
            ),
          ),
          child: DropdownButton(
            value: 1,
            isExpanded: true,
            style: sHeadline.copyWith(color: cDarkBlue),
            items: categories.map((Category category) {
              return DropdownMenuItem(
                value: category.id,
                child: Text(category.title),
              );
            }).toList(),
            onChanged: null,
            dropdownColor: cGray1,
            icon: SvgPicture.asset(
              'assets/icons/arrow_down.svg',
              width: i14,
            ),
            underline: Container(),
          ),
        ),
        const SizedBox(height: m15),

        // Price filter
        Text(
          'Price',
          style: sHeadline.copyWith(
            color: cDarkBlue,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: m10),
        Container(
          height: 37,
          padding: const EdgeInsets.symmetric(horizontal: p15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(r5),
            border: Border.all(
              color: cGray1,
              width: 1,
            ),
          ),
          child: DropdownButton(
            value: 1,
            isExpanded: true,
            style: sHeadline.copyWith(color: cDarkBlue),
            items: categories.map((Category category) {
              return DropdownMenuItem(
                value: category.id,
                child: Text(category.title),
              );
            }).toList(),
            onChanged: null,
            dropdownColor: cGray1,
            icon: SvgPicture.asset(
              'assets/icons/arrow_down.svg',
              width: i14,
            ),
            underline: Container(),
          ),
        ),
        const SizedBox(height: m15),

        // Size filter
        Text(
          'Size',
          style: sHeadline.copyWith(
            color: cDarkBlue,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: m10),
        Container(
          height: 37,
          padding: const EdgeInsets.symmetric(horizontal: p15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(r5),
            border: Border.all(
              color: cGray1,
              width: 1,
            ),
          ),
          child: DropdownButton(
            value: 1,
            isExpanded: true,
            style: sHeadline.copyWith(color: cDarkBlue),
            items: categories.map((Category category) {
              return DropdownMenuItem(
                value: category.id,
                child: Text(category.title),
              );
            }).toList(),
            onChanged: null,
            dropdownColor: cGray1,
            icon: SvgPicture.asset(
              'assets/icons/arrow_down.svg',
              width: i14,
            ),
            underline: Container(),
          ),
        ),
      ],
    );
  }
}
