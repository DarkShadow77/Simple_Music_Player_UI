import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    Key? key,
    required this.width,
    required this.height,
    required this.firstContainerColor,
    required this.secondContainerColor,
    required this.firstShadowColor,
    required this.firstShadowOpacity,
    required this.secondShadowColor,
    required this.secondShadowOpacity,
    required this.stopOne,
    required this.stopTwo,
    required this.image,
  }) : super(key: key);

  final double width;
  final double height;
  final Color firstContainerColor;
  final Color secondContainerColor;
  final Color firstShadowColor;
  final double firstShadowOpacity;
  final Color secondShadowColor;
  final double secondShadowOpacity;
  final double stopOne;
  final double stopTwo;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(25),
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
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
          boxShadow: [
            BoxShadow(
              offset: Offset(-10, -10),
              blurRadius: 10,
              color: firstShadowColor.withOpacity(firstShadowOpacity),
            ),
            BoxShadow(
              offset: Offset(10, 10),
              blurRadius: 10,
              color: secondShadowColor.withOpacity(secondShadowOpacity),
            )
          ],
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
