import 'package:flutter/material.dart';
import 'package:neumorphism/util/colors.dart';

class ThinText extends StatelessWidget {
  const ThinText({
    Key? key,
    required this.text,
    required this.size,
    this.maxlines,
  }) : super(key: key);

  final String text;
  final double size;
  final int? maxlines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.textColor.withOpacity(0.5),
        fontFamily: 'Roboto',
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
      maxLines: maxlines,
      textAlign: TextAlign.center,
    );
  }
}
