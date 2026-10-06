import 'package:aula_01/domen/conversa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChatListPage extends StatelessWidget {
  List<Conversa> conversa = [
    Conversa (
      contato:"joão gabriel",
      ultimaMsg:"prox jogo do flamengo",
      hora:"15:45",
      naoLidas: 1,
    ),
    Conversa(
      contato: "gabriel",
      ultimaMsg: "data da final da libertadores",
      hora:"4:00",
      naoLidas: 1,
    ),
  ];
  ChatListPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversas'),
        
      ),
      body: ListView.builder(itemBuilder: (context, int i)
       {
        
        return  ListTile(
          
          title: Text('conversa,contato'),
          subtitle: const Text('Mensagem de exemplo'),
          onTap: () {
            // Ação ao tocar na conversa
          },
        );
      }
      
         
      ),
    );
  }
}

              