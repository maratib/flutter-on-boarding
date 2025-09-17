import 'package:flutter/material.dart';
import 'package:flutter_quick_start/onboarding/onboarding.dart';
import 'package:flutter_svg/svg.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: SvgPicture.asset(
            'assets/images/bg.svg',
            fit: BoxFit.fitWidth, // Fits the width of the screen
            height: 250, // You can specify a fixed height
          ),
        ),
        OnBoarding(),
      ],
    );
  }
}
