import 'package:flutter/material.dart';
import 'package:neumorphism/playlist/music_list.dart';
import 'package:neumorphism/widgets/thick_text.dart';

class PlayList extends StatelessWidget {
  const PlayList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              vertical: size.width * 0.025, horizontal: size.height * 0.02),
          alignment: Alignment.topLeft,
          child: ThickText(
            text: 'My playlist',
            size: 22,
          ),
        ),
        MusicList(
          size: size,
        ),
      ],
    );
  }
}
