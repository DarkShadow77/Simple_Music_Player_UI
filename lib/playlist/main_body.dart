import 'package:flutter/material.dart';
import 'package:neumorphism/playlist/playlist.dart';
import 'package:neumorphism/util/colors.dart';
import 'package:neumorphism/widgets/rounded_image.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
            right: size.height * 0.03,
            left: size.height * 0.03,
            top: size.height * 0.15),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            RoundedImage(
              width: size.width * 0.65,
              height: size.height * 0.35,
              firstContainerColor: AppColors.firstBackgroundColor,
              secondContainerColor: AppColors.secondBackgroundColor,
              stopOne: 0.1,
              stopTwo: 0.6,
              firstShadowColor: AppColors.blackShadowColor,
              firstShadowOpacity: 0.15,
              secondShadowColor: AppColors.whiteShadowColor,
              secondShadowOpacity: 0.5,
              image: 'assets/images/Saly-22.png',
            ),
            PlayList(size: size),
          ],
        ),
      ),
    );
  }
}
