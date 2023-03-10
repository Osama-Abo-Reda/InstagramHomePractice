import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    'assets/images/profile_picture1.jpg',
    'assets/images/profile_picture2.jpg',
    'assets/images/profile_picture3.jpg',
    'assets/images/profile_picture4.jpg',
    'assets/images/profile_picture5.jpg',
    'assets/images/profile_picture6.jpg',
    'assets/images/profile_picture7.jpg',
    'assets/images/profile_picture8.jpg',
  ];
  List<String> postImages = [
    'assets/images/post_1.jpg',
    'assets/images/post_2.jpg',
    'assets/images/post_3.jpg',
    'assets/images/post_4.jpg',
    'assets/images/post_5.jpg',
    'assets/images/post_6.jpg',
    'assets/images/post_7.jpg',
    'assets/images/post_8.jpg',
    'assets/images/post_9.jpg',
    'assets/images/post_10.jpg',
    'assets/images/post_11.jpg',
    'assets/images/post_12.jpg',
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
          'assets/images/insta_title1.png',
          height: 125,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // story
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
                            radius: 33,
                            backgroundImage: const AssetImage(
                              'assets/images/insta_story.jpg',
                            ),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                profileImages[index],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Profile Name',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                            ),
                          ),
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
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: const AssetImage(
                                'assets/images/insta_story.jpg',
                              ),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  profileImages[index],
                                ),
                              ),
                            ),
                          ),
                          const Text('Profile Name'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                          )
                        ],
                      ),
                      // Image Post
                      Image.asset(
                        postImages[index],
                      ),
                      // Footer Post
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
                            icon: const Icon(Icons.label_outline),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_border),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: 'Liked By'),
                                  TextSpan(
                                    text: ' Profile Name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: ' and '),
                                  TextSpan(
                                    text: 'Others',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: ' Profile Name ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'This is the most amazing picture ever put on Instagram. This is also best course ever made',
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'View all 12 comments',
                              style: TextStyle(color: Colors.black38),
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
