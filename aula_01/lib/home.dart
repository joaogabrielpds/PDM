import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('ola')),
    body: Container(color: const Color.fromARGB(255, 255, 204, 0)),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ));
    
  }
}
