import 'package:coffee/core/widgets/custom_bottom_navbar.dart';
import 'package:coffee/featuers/HomeView/view/shop_cart_view.dart';
import 'package:coffee/featuers/HomeView/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const HomeViewBody(),
    const ShopCartView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(onTabChange: (index) {
        setState(() {
          selectedIndex = index;
        });
      }),
      body: pages[selectedIndex],
    );
  }
}
