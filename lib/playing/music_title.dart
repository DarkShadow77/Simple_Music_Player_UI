import 'package:flutter/material.dart';
import 'package:neumorphism/widgets/thick_text.dart';
import 'package:neumorphism/widgets/thin_text.dart';

class MusicTitle extends StatelessWidget {
  const MusicTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      child: Column(
        children: [
          ThickText(text: 'Girl like me', size: 30),
          ThinText(text: 'Shakira ft Black Eyed peas', size: 12),
        ],
      ),
    );
  }
}
