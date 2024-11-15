import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/message.dart';

import 'package:instagram_clone/screens/notification/notification_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png",
    "images/7.jpg",
    "images/8.jpg",
  ];
  int currentPage = 0;

  List<String> posts = [
    "images/post_1.png",
    "images/post_1.png",
    "images/post_1.png",
    "images/post_1.png",
    "images/post_1.png",
    "images/post_1.png",
    "images/post_1.png",
    "images/post_1.png",
  ];

  Future<void> onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/insta_title.png',
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Message(),
                ),
              );
            },
            icon: const Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //story
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: const AssetImage(
                              "images/story.png",
                            ),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                profileImage[index],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Profile Name",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Column(
                children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: const AssetImage(
                                "images/story.png",
                              ),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  profileImage[index],
                                ),
                              ),
                            ),
                          ),
                          const Text('Profile Name'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                      //Imgae Post
                      Image.asset(posts[index]),
                      //footer post
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chat_bubble_outline),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.label_important),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_border_outlined),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: "Liked by "),
                                  TextSpan(
                                    text: "shruti",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: " and"),
                                  TextSpan(
                                    text: " 23 others",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "roshni_bhilare",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                      text: "This is a beautiful place..!"),
                                ],
                              ),
                            ),
                            const Text(
                              'View all 12 comments',
                              style: TextStyle(
                                color: Colors.black38,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}








// Row(
//                         children: [
//                           GridView.count(
//                             primary: false,
//                             padding: const EdgeInsets.all(20),
//                             crossAxisSpacing: 10,
//                             mainAxisSpacing: 10,
//                             crossAxisCount: 3,
//                             children: <Widget>[
//                               Container(
//                                 padding: const EdgeInsets.all(8),
//                                 color: Colors.teal[100],
//                                 child: Image.asset('images/post_1.png'),
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.all(8),
//                                 color: Colors.teal[200],
//                                 child: Image.asset('images/post_1.png'),
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.all(8),
//                                 color: Colors.teal[300],
//                                 child: Image.asset('images/post_1.png'),
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.all(8),
//                                 color: Colors.teal[400],
//                                 child: Image.asset('images/post_1.png'),
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.all(8),
//                                 color: Colors.teal[600],
//                                 child: Image.asset('images/post_1.png'),
//                               ),
//                             ],
//                           )
//                         ],
//                       )