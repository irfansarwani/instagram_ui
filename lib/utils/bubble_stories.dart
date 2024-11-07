import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories(
      {super.key, required this.name, required this.bubbleImagePath});

  final String name;
  final String bubbleImagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
            child: ClipOval(
              child: Image.network(
                bubbleImagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(name),
        ],
      ),
    );
  }
}
