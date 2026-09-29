import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha aula'),
      ),

      body: Column(
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Aula de hoje',
                  
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Widgets e composição'),
                Text('Aprendendo a construir interfaces com Flutter'),
                Text('Praticando com exemplos práticos'),
              ],
            ),
          ),

          Row(
            children: [
              Card(
                child: Column(
                  children: const [
                    Icon(Icons.book),
                    Text('12'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
