import 'package:coffee/constents.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const GradientButton(
      {required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = ColorPallete.mainColor;
    final secondaryColor = ColorPallete.secondColor;

    const double borderRadius = 15;

    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          gradient: LinearGradient(
              colors: [secondaryColor, primaryColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            alignment: Alignment.center,
            padding: MaterialStateProperty.all(const EdgeInsets.only(
                right: 60, left: 60, top: 15, bottom: 15)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
