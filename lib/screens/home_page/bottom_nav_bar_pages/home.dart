import 'package:flutter/material.dart';
import 'package:konethus_app/components/feed.dart';
import 'package:konethus_app/components/story.dart';

class Home extends StatefulWidget {
  static String id = 'home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                    child: Hero(
                      tag: 'normal',
                      child: Image.asset(
                        'assets/images/konethus.png',
                      ),
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
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        StoryWidget(),
                      ],
                    ),
                  ),
                  const Feeds(
                    name: 'Dartjessigirl90',
                    description: 'Backend/flutter/reactjs',
                    image: 'assets/images/dartjessigirl.jpg',
                    circleAvatar: 'assets/images/circle_avatar_1.png',
                  ),
                  const Feeds(
                    name: 'henryjnr',
                    description: 'Backend/flutter/reactjs',
                    image: 'assets/images/henryjnr.jpg',
                    circleAvatar: 'assets/images/circle_avatar_7.png',
                  ),
                  const Feeds(
                    name: 'Daz.',
                    description: 'Backend/flutter/reactjs',
                    image: 'assets/images/Daz.jpg',
                    circleAvatar: 'assets/images/circle_avatar_3.png',
                  ),
                  const Feeds(
                    name: 'Dartjessigirl90',
                    description: 'Backend/flutter/reactjs',
                    image: 'assets/images/q2.jpg',
                    circleAvatar: 'assets/images/circle_avatar_4.png',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
