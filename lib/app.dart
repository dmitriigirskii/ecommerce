import 'package:ecommerce/ui/screens/main.dart';
import 'package:ecommerce/ui/themes/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce concept',
      theme: themeLight,
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
