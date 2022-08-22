import 'package:ecommerce/ui/screens/favorite.dart';
import 'package:ecommerce/ui/screens/main.dart';
import 'package:ecommerce/ui/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/cart/view/cart.dart';
import '../../features/navigation/cubit/tabs_cubit.dart';

class WrapperScreen extends StatelessWidget {
  const WrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      const MainScreen(),
      const CartScreen(),
      const FavoriteScreen(),
      const ProfileScreen(),
    ];

    return BlocBuilder<TabsCubit, TabsState>(
      builder: (context, state) {
        if (state is TabsInitial) {
          return IndexedStack(
            index: state.index,
            children: pages,
          );
        }
        return pages[0];
      },
    );
  }
}
