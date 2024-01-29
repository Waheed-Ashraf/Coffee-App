import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  final Function(int) onTabChange;
  const CustomBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: GNav(
          padding: const EdgeInsets.all(8),
          onTabChange: onTabChange,
          color: Colors.grey[400],
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.grey[700],
          tabBackgroundColor: Colors.grey.shade300,
          tabBorderRadius: 16,
          tabActiveBorder: Border.all(color: Colors.white),
          tabs: [
            GButton(
              icon: Icons.home,
              iconColor: Theme.of(context).colorScheme.inversePrimary,
              text: 'home',
            ),
            GButton(
              icon: Icons.shopping_bag,
              iconColor: Theme.of(context).colorScheme.inversePrimary,
              text: 'cart',
            ),
          ]),
    );
  }
}
