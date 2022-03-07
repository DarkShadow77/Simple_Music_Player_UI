import 'package:flutter/material.dart';
import '../util/colors.dart';

class MusicListCard extends StatelessWidget {
  const MusicListCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.width * 0.025),
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: size.width * 0.04),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.secondBackgroundColor,
                      AppColors.thirdBackgroundColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      0.6,
                      1,
                    ],
                  ),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-3, -3),
                      blurRadius: 2,
                      color: AppColors.firstShadowColor.withOpacity(0.8),
                    ),
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 3,
                      color: AppColors.secondShadowColor.withOpacity(0.3),
                    )
                  ],
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: 16,
                  color: AppColors.textColor,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  color: Color(0xff384f7d),
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.secondBackgroundColor,
                  AppColors.thirdBackgroundColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
                  0.2,
                  1,
                ],
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(-3, -3),
                  blurRadius: 2,
                  color: AppColors.firstShadowColor.withOpacity(0.8),
                ),
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 3,
                  color: AppColors.secondShadowColor.withOpacity(0.3),
                )
              ],
            ),
            child: Icon(
              Icons.favorite_rounded,
              size: 16,
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
