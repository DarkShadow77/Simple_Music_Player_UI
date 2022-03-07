import 'package:flutter/material.dart';
import '../util/colors.dart';

class ThickText extends StatelessWidget {
  const ThickText({
    Key? key,
    required this.text,
    required this.size,
    this.maxlines,
    this.align,
  }) : super(key: key);

  final String text;
  final double size;
  final int? maxlines;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.textColor,
        fontFamily: 'Roboto',
        fontSize: size,
        fontWeight: FontWeight.w900,
      ),
      maxLines: maxlines,
      textAlign: align,
    );
  }
}
