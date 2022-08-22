import 'package:ecommerce/features/cart/view/cart.dart';
import 'package:ecommerce/features/favorite/view/favorite.dart';
import 'package:ecommerce/features/product/view/detail.dart';
import 'package:ecommerce/features/profile/view/profile.dart';
import 'package:ecommerce/ui/screens/empty.dart';
import 'package:ecommerce/ui/screens/wrapper.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => const WrapperScreen(),

  // Favorite
  '/favorite': (context) => const FavoriteScreen(),

  // Cart
  '/cart': (context) => const CartScreen(),

  // Profile
  '/profile': (context) => const ProfileScreen(),

  // Product
  '/product/detail': (context) => const ProductDetail(),

  // Empty
  '/empty': (context) => const EmptyScreen(),
};
