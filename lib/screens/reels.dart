import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/my_Reels3.dart';
import 'package:instagram_ui/utils/my_reels.dart';
import 'package:instagram_ui/utils/my_reels2.dart';

class Reels extends StatelessWidget {
  Reels({super.key});

  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: const [
          MyReels1(),
          MyReels2(),
          MyReels3(),
        ],
      ),
    );
  }
}
