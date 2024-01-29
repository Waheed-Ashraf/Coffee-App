import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(
            image: AssetImage('assets/images/cup.png'),
            width: 40,
            height: 40,
            fit: BoxFit.contain,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.25),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.toggle_off,
                size: 40,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
