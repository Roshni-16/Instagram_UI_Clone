import 'package:flutter/material.dart';

import 'package:instagram_clone/screens/notification/notification_card.dart';
import 'package:instagram_clone/screens/profile_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, dynamic>> notifications = [
    {
      'user': 'john_doe',
      'action': 'liked your post',
      'time': '1 min ago',
      'image': 'images/1.png',
      'isRead': false,
    },
    {
      'user': 'jane_smith',
      'action': 'commented: "Great pic!"',
      'time': '2 hours ago',
      'image': 'images/2.png',
      'isRead': false,
    },
    {
      'user': 'alex123',
      'action': 'started following you',
      'time': '5 hours ago',
      'image': 'images/3.png',
      'isRead': false,
    },
  ];

  void toggleReadStatus(int index) {
    setState(() {
      notifications[index]['isRead'] = !notifications[index]['isRead'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return NotificationCard(
              notification: notifications[index],
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },

              // ProfileScreen(),
              // ,
            );
          },
        ),
      ),
    );
  }
}
