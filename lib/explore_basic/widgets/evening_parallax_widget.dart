import 'package:flutter/material.dart';

class EveningParallaxWidget extends StatelessWidget {
  const EveningParallaxWidget({
    Key? key,
    required this.top,
    required this.image,
  }) : super(key: key);

  final double top;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -45,
      right: 0,
      top: top,
      child: SizedBox(
        height: 550,
        width: 900,
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
