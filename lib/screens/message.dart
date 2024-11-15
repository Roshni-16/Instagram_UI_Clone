import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/messagebubble.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  List<Map<String, String>> messages = [
    {'sender': 'john_doe', 'message': 'Hey, how are you?', 'time': '1 min ago'},
    {
      'sender': 'you',
      'message': 'I\'m good, how about you?',
      'time': '1 min ago'
    },
    {'sender': 'john_doe', 'message': 'All good! 😎', 'time': '2 min ago'},
    {'sender': 'you', 'message': 'Great to hear!', 'time': '2 min ago'},
    {
      'sender': 'john_doe',
      'message': 'Let\'s catch up soon!',
      'time': '3 min ago'
    },
  ];

  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('images/1.png'),
            ),
            SizedBox(width: 10),
            Text('Shruti'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse:
                  true, // Messages should be displayed in reverse order (most recent at the bottom)
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                bool isSender = message['sender'] == 'you';
                return MessageBubble(
                  message: message['message']!,
                  sender: message['sender']!,
                  time: message['time']!,
                  isSender: isSender,
                );
              },
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.grey),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.blue),
            onPressed: () {
              if (_messageController.text.isNotEmpty) {
                setState(() {
                  messages.insert(0, {
                    'sender': 'you',
                    'message': _messageController.text,
                    'time': 'Just now'
                  });
                });
                _messageController.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
