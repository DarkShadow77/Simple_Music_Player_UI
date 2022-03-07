import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphism/playing/header.dart';
import 'package:neumorphism/playing/music_controller.dart';
import 'package:neumorphism/playing/music_title.dart';
import 'package:neumorphism/playing/slider.dart';
import 'package:neumorphism/widgets/rounded_icon.dart';
import 'package:neumorphism/widgets/rounded_image.dart';
import '../screen/discover_screen.dart';
import '../screen/playlist_screen.dart';
import '../widgets/background.dart';
import '../util/colors.dart';
import '../widgets/thick_text.dart';
import '../widgets/thin_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.06),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header(),
            RoundedImage(
              width: size.width * 0.75,
              height: size.height * 0.45,
              firstContainerColor: AppColors.firstBackgroundColor,
              secondContainerColor: AppColors.secondBackgroundColor,
              stopOne: 0.1,
              stopTwo: 0.6,
              firstShadowColor: AppColors.whiteShadowColor,
              firstShadowOpacity: 0.5,
              secondShadowColor: AppColors.blackShadowColor,
              secondShadowOpacity: 0.15,
              image: 'assets/images/Saly-91.png',
            ),
            MusicTitle(),
            Sliders(),
            MusicController()
          ],
        ),
      ),
    );
  }
}
