import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble(
      {super.key,
      required this.isSender,
      required this.message,
      required this.sender,
      required this.time});

  final String message;
  final String sender;
  final String time;
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Material(
              color: isSender ? Colors.blueAccent : Colors.grey[300]!,
              borderRadius: BorderRadius.circular(15),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message,
                      style: TextStyle(color: isSender ? Colors.white : Colors.black),
                    ),
                    SizedBox(height: 5),
                    Text(
                      time,
                      style: TextStyle(color: isSender ? Colors.white70 : Colors.black54, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
