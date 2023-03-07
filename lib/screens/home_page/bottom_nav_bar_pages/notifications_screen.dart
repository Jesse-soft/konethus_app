import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  static String id = 'notifications_screen';
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('Notification')],
      ),
    );
  }
}
