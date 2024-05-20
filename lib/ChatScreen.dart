import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget {
  final String userName;

  ChatScreen({required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: List.generate(20, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: index % 2 == 0 ? Alignment.centerLeft : Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: index % 2 == 0 ? Colors.grey[200] : Colors.blue[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Message $index'),
                    ),
                  ),
                );
              }),
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
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}
