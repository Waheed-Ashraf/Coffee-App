import 'package:coffee/core/text_style.dart';
import 'package:coffee/featuers/HomeView/manager/shop_cart_cubit/shop_cart_cubit.dart';
import 'package:coffee/featuers/HomeView/view/widgets/shop_cart_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCartView extends StatelessWidget {
  const ShopCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ShopCartBody()),
    );
  }
}
