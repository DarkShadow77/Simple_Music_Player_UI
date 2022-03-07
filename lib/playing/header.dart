import 'package:flutter/material.dart';
import 'package:neumorphism/screen/discover_screen.dart';
import 'package:neumorphism/screen/playlist_screen.dart';
import 'package:neumorphism/util/colors.dart';
import 'package:neumorphism/widgets/rounded_icon.dart';
import 'package:neumorphism/widgets/thick_text.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DiscoverPage();
                  },
                ),
              );
            },
            child: RoundedIcon(
              width: 55,
              height: 55,
              firstContainerColor: AppColors.firstBackgroundColor,
              secondContainerColor: AppColors.secondBackgroundColor,
              stopOne: 0.6,
              stopTwo: 1,
              firstShadowColor: AppColors.blackShadowColor,
              firstShadowOpacity: 0.4,
              secondShadowColor: AppColors.whiteShadowColor,
              secondShadowOpacity: 0.8,
              icon: Icons.arrow_back_rounded,
              iconSize: 30,
              iconColor: AppColors.textColor,
            ),
          ),
          ThickText(text: 'Now Playing', size: 22),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PlaylistPage();
                  },
                ),
              );
            },
            child: RoundedIcon(
              width: 55,
              height: 55,
              firstContainerColor: AppColors.firstBackgroundColor,
              secondContainerColor: AppColors.secondBackgroundColor,
              stopOne: 0.3,
              stopTwo: 0.6,
              firstShadowColor: AppColors.blackShadowColor,
              firstShadowOpacity: 0.4,
              secondShadowColor: AppColors.whiteShadowColor,
              secondShadowOpacity: 0.8,
              icon: Icons.clear_all_rounded,
              iconSize: 30,
              iconColor: AppColors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
