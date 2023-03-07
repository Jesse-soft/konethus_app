import 'package:flutter/material.dart';

class ShortsScreen extends StatefulWidget {
  static String id = 'shorts_screen';
  const ShortsScreen({super.key});

  @override
  State<ShortsScreen> createState() => _ShortsScreenState();
}

class _ShortsScreenState extends State<ShortsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('shorts')],
      ),
    );
  }
}
