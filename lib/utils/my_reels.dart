import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/post_tamplet.dart';

class MyReels1 extends StatelessWidget {
  const MyReels1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTamplet(
      userName: 'irfansarwani',
      videoDescription: 'instagram UI tutrotls',
      userHashTags: ' #insta #UI #flutter',
      numberOfLikes: '1.2M',
      numberOfComments: '12K',
      numberOfShares: '1K',
      userPost: Container(
        color: Colors.grey,
      ),
    );
  }
}
