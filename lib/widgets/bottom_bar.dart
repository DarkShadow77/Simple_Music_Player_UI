import 'dart:ui';
import 'package:flutter/material.dart';
import '../util/colors.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key}) : super(key: key);

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.check_circle_rounded,
    Icons.shuffle_rounded,
    Icons.search_rounded,
    Icons.person,
  ];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var color = AppColors.firstBackgroundColor;

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: size.height * 0.08,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.4),
          ),
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                currentIndex = index;
                print(currentIndex);
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      listOfIcons[index],
                      size: size.width * .07,
                      color: AppColors.textColor,
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(
                      top: index == currentIndex
                          ? size.width * .01
                          : size.width * .005,
                      right: size.width * .015,
                      left: size.width * .015,
                    ),
                    width: size.width * .153,
                    height: index == currentIndex ? size.width * .018 : 0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.textColor,
                          AppColors.firstBackgroundColor,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [
                          0.1,
                          0.6,
                        ],
                      ),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
