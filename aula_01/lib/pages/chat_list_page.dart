import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversas'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Text('J'),
            ),
            title: const Text('João'),
            subtitle: const Text('22'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Text('G'),
            ),
            title: const Text('Gabriel'),
            subtitle: const Text('22'),
          ),
        ],
      ),
    );
  }
}
