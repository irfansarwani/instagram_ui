import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/post_tamplet.dart';

class MyReels2 extends StatelessWidget {
  const MyReels2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTamplet(
      userName: 'Mohsin',
      videoDescription: 'Wordpress tutrotls ',
      userHashTags: ' #wordpress #UI #web development',
      numberOfLikes: '1.2M',
      numberOfComments: '12K',
      numberOfShares: '1K',
      userPost: Container(
        color: Colors.grey,
      ),
    );
  }
}
