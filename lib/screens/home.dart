import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/index.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List places = [
    [
      'Dubai',
      'https://www.visitdubai.com/-/media/images/leisure/detail-pages/plan-your-trip/4-4-places-to-stay-t14/4-4-places-to-stay-t14-fallback.jpg'
    ],
    [
      'Islamabad',
      'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png'
    ],
    [
      'Lahore',
      'https://b.thumbs.redditmedia.com/Ki5uueLRUaWIyOwfz2oCovs0zyzA9lnuQgwf9llS6Hw.png'
    ],
    [
      'Islamabad',
      'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png'
    ],
    [
      'Dubai',
      'https://www.visitdubai.com/-/media/images/leisure/detail-pages/plan-your-trip/4-4-places-to-stay-t14/4-4-places-to-stay-t14-fallback.jpg'
    ],
    [
      'Karachi',
      'https://www.visitdubai.com/-/media/images/leisure/detail-pages/plan-your-trip/4-4-places-to-stay-t14/4-4-places-to-stay-t14-fallback.jpg'
    ],
    [
      'Sharjah',
      'https://www.visitdubai.com/-/media/images/leisure/detail-pages/plan-your-trip/4-4-places-to-stay-t14/4-4-places-to-stay-t14-fallback.jpg'
    ],
  ];

  final List userPost = [
    [
      'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png',
      'irfansarwani',
      'https://b.thumbs.redditmedia.com/Ki5uueLRUaWIyOwfz2oCovs0zyzA9lnuQgwf9llS6Hw.png'
    ],
    [
      'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png',
      'IGtv',
      'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png'
    ],
    [
      'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png',
      'irfansarwani',
      'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram'),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, index) {
                return BubbleStories(
                  name: places[index][0],
                  bubbleImagePath: places[index][1],
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: userPost.length,
                itemBuilder: (context, index) {
                  return UserPost(
                    userImagePath: userPost[index][0],
                    userName: userPost[index][1],
                    userPostImage: userPost[index][2],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
