import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/my_button.dart';

class PostTamplet extends StatelessWidget {
  const PostTamplet(
      {super.key,
      required this.userName,
      required this.videoDescription,
      required this.userHashTags,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.numberOfShares,
      required this.userPost});

  final String userName;
  final String videoDescription;
  final String userHashTags;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userPost,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@$userName',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: videoDescription,
                          style: const TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: userHashTags,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: const Alignment(1, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(icon: Icons.favorite, number: numberOfLikes),
                  MyButton(icon: Icons.comment, number: numberOfComments),
                  MyButton(icon: Icons.share, number: numberOfShares),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
