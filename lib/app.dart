import 'package:ecommerce/routes.dart';
import 'package:ecommerce/ui/screens/wrapper.dart';
import 'package:ecommerce/ui/themes/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/cart/bloc/cart_bloc.dart';
import 'features/cart/service/cart.dart';
import 'features/navigation/cubit/tabs_cubit.dart';
import 'features/splash/cubit/splash_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SplashCubit()),
        BlocProvider(create: (_) => TabsCubit()),
        BlocProvider(
          create: (_) =>
              CartBloc(cartService: CartService())..add(CartEventLoad()),
        ),
      ],
      child: MaterialApp(
        title: 'Ecommerce concept',
        theme: themeLight,
        initialRoute: '/',
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (context) => const WrapperScreen());
        },
        routes: routes,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
