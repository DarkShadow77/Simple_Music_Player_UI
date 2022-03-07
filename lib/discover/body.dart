import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../widgets/thick_text.dart';
import '../screen/playing_screen.dart';
import '../widgets/background.dart';
import '../util/colors.dart';
import '../widgets/thin_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.03),
                child: Image.asset(
                  'assets/images/Saly-16.png',
                  height: size.height * 0.37,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PlayingPage();
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
                  width: size.width * 0.80,
                  height: size.height * 0.35,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      AppColors.secondBackgroundColor,
                      AppColors.thirdBackgroundColor,
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderRadius: BorderRadius.all(
                      Radius.circular(35),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(-10, -10),
                        blurRadius: 20,
                        color: AppColors.firstShadowColor.withOpacity(0.8),
                      ),
                      BoxShadow(
                        offset: Offset(10, 10),
                        blurRadius: 20,
                        color: AppColors.secondShadowColor.withOpacity(0.15),
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ThickText(
                          text: 'Discover 70 millions songs Ad free',
                          size: 36,
                          maxlines: 3),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ThinText(
                            text:
                                'Download songs and albums to listen offline wherever you are.',
                            size: 18,
                            maxlines: 3,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
            height: size.height * 0.05,
            child: Center(
              child: new DotsIndicator(
                dotsCount: 3,
                position: 0,
                decorator: DotsDecorator(
                  activeColor: 1.toInt().isEven
                      ? AppColors.firstContainerColor
                      : AppColors.firstBackgroundColor,
                  size: const Size.square(8.0),
                  activeSize: const Size(25.0, 8.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
