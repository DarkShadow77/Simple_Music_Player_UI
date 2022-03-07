import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  const RoundedIcon({
    Key? key,
    required this.width,
    required this.height,
    required this.firstContainerColor,
    required this.secondContainerColor,
    required this.stopOne,
    required this.stopTwo,
    required this.firstShadowColor,
    required this.firstShadowOpacity,
    required this.secondShadowColor,
    required this.secondShadowOpacity,
    required this.icon,
    required this.iconSize,
    required this.iconColor,
  }) : super(key: key);

  final double width;
  final double height;
  final Color firstContainerColor;
  final Color secondContainerColor;
  final double stopOne;
  final double stopTwo;
  final Color firstShadowColor;
  final double firstShadowOpacity;
  final Color secondShadowColor;
  final double secondShadowOpacity;
  final IconData icon;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              firstContainerColor,
              secondContainerColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              stopOne,
              stopTwo,
            ],
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: Offset(-3, -3),
              blurRadius: 3,
              color: firstShadowColor.withOpacity(firstShadowOpacity),
            ),
            BoxShadow(
              offset: Offset(3, 3),
              blurRadius: 3,
              color: secondShadowColor.withOpacity(secondShadowOpacity),
            )
          ],
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
