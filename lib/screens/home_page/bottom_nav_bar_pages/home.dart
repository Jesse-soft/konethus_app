import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String id = 'home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int reactions = 0;
  bool isLiked = false;
  homeContent({
    required String circleAvatar,
    required String name,
    required String description,
    required String image,
  }) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: Image.asset(
                      circleAvatar,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.more_horiz,
              )
            ],
          ),
        ),
        GestureDetector(
          onDoubleTap: () {
            setState(() {
              isLiked = !isLiked;
              isLiked ? reactions++ : reactions--;
            });
          },
          child: Image.asset(
            image,
            width: double.infinity,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              isLiked = !isLiked;
                              isLiked ? reactions++ : reactions--;
                            });
                          },
                          icon: isLiked
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.favorite_border_outlined,
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.sms_outlined,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share_outlined,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_outline,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      reactions == 0 ? '' : '$reactions Reactions',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: SingleChildScrollView(
                      child: Row(
                        children: const [
                          Text(
                            'Dartjessigirl90',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'My View vsYours?',
                          ),
                          Text(
                            '#Codinggee#backend#Dev',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                            overflow: TextOverflow.clip,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'View all comments',
                          style: TextStyle(
                            color: Color.fromARGB(
                              183,
                              158,
                              158,
                              158,
                            ),
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text(
                            '24 hours ago',
                            style: TextStyle(
                              color: Color.fromARGB(
                                183,
                                158,
                                158,
                                158,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: Image.asset(
                      'assets/images/konethus.png',
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.search_outlined,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.send_outlined,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                homeContent(
                  name: 'Dartjessigirl90',
                  description: 'Backend/flutter/reactjs',
                  image: 'assets/images/dartjessigirl.jpg',
                  circleAvatar: 'assets/images/circle_avatar_1.png',
                ),
                homeContent(
                  name: 'henryjnr',
                  description: 'Backend/flutter/reactjs',
                  image: 'assets/images/henryjnr.jpg',
                  circleAvatar: 'assets/images/circle_avatar_2.png',
                ),
                homeContent(
                  name: 'Daz.',
                  description: 'Backend/flutter/reactjs',
                  image: 'assets/images/Daz.jpg',
                  circleAvatar: 'assets/images/circle_avatar_3.png',
                ),
                homeContent(
                  name: 'Dartjessigirl90',
                  description: 'Backend/flutter/reactjs',
                  image: 'assets/images/q2.jpg',
                  circleAvatar: 'assets/images/circle_avatar_4.png',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
