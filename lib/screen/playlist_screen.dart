import 'package:flutter/material.dart';
import '../widgets/bottom_bar.dart';
import '../util/colors.dart';
import '../playlist/body.dart';

class PlaylistPage extends StatelessWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      body: Body(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
