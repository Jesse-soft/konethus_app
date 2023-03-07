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
        children: [Text('posts')],
      ),
    );
  }
}
