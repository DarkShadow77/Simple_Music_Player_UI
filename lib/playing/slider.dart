import 'package:flutter/material.dart';
import 'package:neumorphism/util/colors.dart';

class Sliders extends StatelessWidget {
  const Sliders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
            activeTrackColor: AppColors.sliderColor,
            thumbColor: AppColors.sliderColor,
            overlayColor: AppColors.secondShadowColor,
            trackHeight: 7,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
        child: Slider(
          value: 170,
          min: 120.0,
          max: 220.0,
          inactiveColor: AppColors.firstBackgroundColor,
          onChanged: (double value) {},
        ),
      ),
    );
  }
}
