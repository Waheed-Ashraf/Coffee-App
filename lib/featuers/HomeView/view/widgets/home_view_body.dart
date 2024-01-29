import 'package:coffee/core/text_style.dart';
import 'package:coffee/featuers/HomeView/view/widgets/custom_app_bar.dart';
import 'package:coffee/featuers/HomeView/view/widgets/product_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 8,
              ),
              Text(
                'A cup that can make your day!',
                style: Styles.titleStyle18.copyWith(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Expanded(child: ProductsList()),
            ],
          ),
        ),
      ),
    );
  }
}
