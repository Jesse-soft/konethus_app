import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  static String id = 'post_screen';
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
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
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
