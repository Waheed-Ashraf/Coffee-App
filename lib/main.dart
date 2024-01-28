import 'package:coffee/constents.dart';
import 'package:coffee/core/app_router.dart';
import 'package:coffee/featuers/Intro/view/intro_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorPallete.backgroundColor,
      ),
    );
  }
}
