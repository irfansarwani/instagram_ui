import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost(
      {super.key,
      required this.userImagePath,
      required this.userName,
      required this.userPostImage});

  final String userImagePath;
  final String userName;
  final String userPostImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                    child: ClipOval(
                      child: Image.network(
                        userImagePath,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    userName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.more_horiz_outlined)
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
          child: Image.network(
            userPostImage,
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                ' Irfan Khan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(' and '),
              Text(
                ' 3 Others',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, top: 8),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'irfansarwani ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text:
                      'this is some example of the rich text and it wont overflow from the  screen',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
