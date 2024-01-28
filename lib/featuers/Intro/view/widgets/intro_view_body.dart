import 'package:coffee/core/app_router.dart';
import 'package:coffee/core/asset_data.dart';
import 'package:coffee/core/widgets/grediant_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AssetsData.onBoardingImage2,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .8,
          child: GradientButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kHomeView);
            },
            text: "Let's Start",
          ),
        ),
      ],
    );
  }
}
