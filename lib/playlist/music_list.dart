import 'package:flutter/material.dart';
import 'package:neumorphism/playlist/music_list_card.dart';

class MusicList extends StatelessWidget {
  const MusicList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        MusicListCard(text: 'Me Enamoredes'),
        SizedBox(
          height: size.height * 0.05,
        )
      ],
    );
  }
}
