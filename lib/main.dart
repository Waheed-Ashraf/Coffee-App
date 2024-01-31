import 'package:coffee/core/app_router.dart';
import 'package:coffee/featuers/HomeView/manager/shop_cart_cubit/shop_cart_cubit.dart';
import 'package:coffee/featuers/HomeView/manager/themes_cubit/themes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShopCartCubit()..CheckCart(),
        ),
        BlocProvider(
          create: (context) => ThemesCubit(),
        ),
      ],
      child: BlocBuilder<ThemesCubit, ThemesState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: state.theme,
          );
        },
      ),
    );
  }
}
