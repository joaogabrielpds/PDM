import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('PDM')),
    body: Container(color: const Color.fromARGB(255, 255, 204, 0)),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.add),
          Text('Nova conversa'),
        ],
      ),
    ));
    
  }
}
