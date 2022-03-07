import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neumorphism/widgets/thick_text.dart';
import 'package:neumorphism/widgets/thin_text.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
        child: Container(
          height: size.height * 0.08,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ThickText(
                text: 'Shakira',
                size: 30,
              ),
              ThinText(
                size: 20,
                text: 'El Dorado',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
