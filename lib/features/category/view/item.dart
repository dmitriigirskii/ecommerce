import 'package:ecommerce/features/category/cubit/category_cubit.dart';
import 'package:ecommerce/ui/styles/global.dart';
import 'package:ecommerce/ui/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../ui/styles/colors.dart';
import '../models/model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    final CategoryCubit categoryCubit =
        BlocProvider.of<CategoryCubit>(context, listen: true);

    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => categoryCubit.setCategory(category.id),
      child: Column(
        children: [
          Container(
            width: 71,
            height: 71,
            decoration: BoxDecoration(
              color: cWhite,
              shape: BoxShape.circle,
              boxShadow: boxShadow2,
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/${category.icon}.svg',
                color:
                    categoryCubit.category == category.id ? cOrange : cLight2,
                height: 30,
                width: 30,
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(
            category.title,
            style: sFootnote.copyWith(
                color: categoryCubit.category == category.id
                    ? cOrange
                    : cDarkBlue),
          )
        ],
      ),
    );
  }
}
