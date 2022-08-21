import 'package:ecommerce/ui/screens/cart.dart';
import 'package:ecommerce/ui/screens/favorite.dart';
import 'package:ecommerce/ui/screens/profile.dart';
import 'package:ecommerce/ui/screens/wrapper.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  '/': (context) => const WrapperScreen(),
  '/favorite': (context) => const FavoriteScreen(),
  '/cart': (context) => const CartScreen(),
  '/profile': (context) => const ProfileScreen(),
};
