import 'package:flutter/material.dart';
import 'package:flutter_quick_start/onboarding/boarding.dart';
import 'package:flutter_svg/svg.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

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
        PageView(
          children: [
            Boarding(
              imageName: "screen1",
              title: "Track Your Goal",
              description:
                  "Don't worry if you have trouble determining\n your goals, We can help you determine your\n goals and track your goals",
            ),
            Boarding(
              imageName: "screen2",
              title: "Get Burn",
              description:
                  "Let’s keep burning, to achive yours goals, it\nhurts only temporarily, if you give up now\n you will be in pain forever",
            ),
            Boarding(
              imageName: "screen3",
              title: "Eat Well",
              description:
                  "Let's start a healthy lifestyle with us, we can\ndetermine your diet every day. healthy\neating is fun",
            ),
            Boarding(
              imageName: "screen4",
              title: "Improve Sleep Quality",
              description:
                  "Improve the quality of your sleep with us,\ngood quality sleep can bring a good mood\nin the morning",
            ),
          ],
        ),
      ],
    );
  }
}
