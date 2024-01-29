import 'package:coffee/core/text_style.dart';
import 'package:flutter/material.dart';

class ShopCartView extends StatelessWidget {
  const ShopCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ShopCartBody()),
    );
  }
}

class ShopCartBody extends StatelessWidget {
  const ShopCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          Text(
            'Your Cart : ',
            style: Styles.titleStyle18,
          ),
        ],
      ),
    );
  }
}
