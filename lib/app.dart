import 'package:ecommerce/routes.dart';
import 'package:ecommerce/ui/screens/wrapper.dart';
import 'package:ecommerce/ui/themes/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: 'Ecommerce concept',
      theme: themeLight,
      initialRoute: '/',
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const WrapperScreen());
      },
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
