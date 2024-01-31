import 'package:coffee/core/asset_data.dart';
import 'package:coffee/core/text_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ShopCartIsImptyBody extends StatelessWidget {
  const ShopCartIsImptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(AssetsData.shopCortImage),
          const SizedBox(
            height: 16,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                'Your cart is empty..',
                style: Styles.titleStyle18.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ))
        ],
      ),
    );
  }
}
