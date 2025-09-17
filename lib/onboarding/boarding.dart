import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Boarding extends StatelessWidget {
  final String title;
  final String description;
  final String imageName;

  const Boarding({
    super.key,
    required this.imageName,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: SvgPicture.asset(
            'assets/images/$imageName.svg',
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 320,

            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 20),

                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
