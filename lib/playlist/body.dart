import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neumorphism/playlist/header.dart';
import 'package:neumorphism/playlist/main_body.dart';
import '../widgets/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.05),
        child: Stack(
          children: [
            MainBody(size: size),
            Header(),
          ],
        ),
      ),
    );
  }
}
