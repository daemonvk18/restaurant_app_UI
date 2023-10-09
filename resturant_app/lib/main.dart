import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resturant_app/components/shop.dart';
import 'package:resturant_app/pages/cart_page.dart';
import 'package:resturant_app/pages/home_page.dart';
import 'package:resturant_app/pages/landing_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      routes: {
        "/landingPage": (context) => LandingPage(),
        "/menuPage": (context) => HomePage(),
        "/cartPage": (context) => CartPage(),
      },
    );
  }
}
