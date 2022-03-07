import 'package:flutter/material.dart';
import 'package:neumorphism/util/colors.dart';
import 'package:neumorphism/widgets/rounded_icon.dart';

class MusicController extends StatelessWidget {
  const MusicController({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.08, vertical: size.height * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RoundedIcon(
            width: 75,
            height: 75,
            firstContainerColor: AppColors.secondBackgroundColor,
            secondContainerColor: AppColors.thirdBackgroundColor,
            stopOne: 0.1,
            stopTwo: 1,
            firstShadowColor: AppColors.whiteShadowColor,
            firstShadowOpacity: 0.8,
            secondShadowColor: AppColors.blackShadowColor,
            secondShadowOpacity: 0.2,
            icon: Icons.fast_rewind_rounded,
            iconSize: 20,
            iconColor: AppColors.textColor,
          ),
          RoundedIcon(
            width: 75,
            height: 75,
            firstContainerColor: AppColors.sliderColor,
            secondContainerColor: AppColors.secondsliderColor,
            stopOne: 0.3,
            stopTwo: 0.8,
            firstShadowColor: AppColors.secondsliderColor,
            firstShadowOpacity: 0.8,
            secondShadowColor: AppColors.sliderColor,
            secondShadowOpacity: 0.2,
            icon: Icons.pause_rounded,
            iconSize: 20,
            iconColor: AppColors.whiteShadowColor,
          ),
          RoundedIcon(
            width: 75,
            height: 75,
            firstContainerColor: AppColors.secondBackgroundColor,
            secondContainerColor: AppColors.thirdBackgroundColor,
            stopOne: 0,
            stopTwo: 0.5,
            firstShadowColor: AppColors.whiteShadowColor,
            firstShadowOpacity: 0.8,
            secondShadowColor: AppColors.blackShadowColor,
            secondShadowOpacity: 0.2,
            icon: Icons.fast_forward_rounded,
            iconSize: 20,
            iconColor: AppColors.textColor,
          ),
        ],
      ),
    );
  }
}
