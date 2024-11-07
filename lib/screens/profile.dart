import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/index.dart';
import 'package:instagram_ui/utils/account_tab1.dart';
import 'package:instagram_ui/utils/account_tab2.dart';
import 'package:instagram_ui/utils/account_tab3.dart';
import 'package:instagram_ui/utils/account_tab4.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/149353892?v=4'),
                      radius: 40,
                    ),
                    Column(
                      children: [
                        Text(
                          '227',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text('Posts'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '4398',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text('Followers'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '349',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text('Following'),
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Irfan Khan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child:
                                Text('Passionate about Mobile App Development'),
                          ),
                          Text(
                            'github.com/irfansarwani',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 185,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text('Edit profile'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 185,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text('Share profile'),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      BubbleStories(
                          name: 'Islamabad',
                          bubbleImagePath:
                              'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png'),
                      BubbleStories(
                          name: 'Islamabad',
                          bubbleImagePath:
                              'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png'),
                      BubbleStories(
                          name: 'Islamabad',
                          bubbleImagePath:
                              'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png'),
                      BubbleStories(
                          name: 'Islamabad',
                          bubbleImagePath:
                              'https://b.thumbs.redditmedia.com/Rqv6x6hH3rDDyORxQV3NoeeaGSLB3xeLyoYbyKE1OrU.png'),
                    ],
                  ),
                ),
                const TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_3x3_outlined),
                    ),
                    Tab(
                      icon: Icon(Icons.video_call),
                    ),
                    Tab(
                      icon: Icon(Icons.shop),
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                    ),
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      AccountTab1(),
                      AccountTab2(),
                      AccountTab3(),
                      AccountTab4(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
