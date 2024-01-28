import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: AssetImage('assets/images/cup.png'),
          width: 20,
          height: 20,
          fit: BoxFit.contain,
        ),
        Icon(
          Icons.toggle_off,
          size: 20,
        ),
      ],
    );
  }
}
