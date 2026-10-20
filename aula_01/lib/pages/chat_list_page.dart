import 'package:aula_01/domen/conversa.dart';
import 'package:flutter/material.dart';
import 'package:aula_01/infra/chat_repositon.dart';

class ChatListPage extends StatelessWidget {
  ChatListPage({super.key});

  ChatRepositon repo = ChatRepositon();

   List<Conversa> conversa = [
    Conversa(
      contato: "joão gabriel",
      ultimaMsg: "prox jogo do flamengo",
      hora: "15:45",
      naoLidas: 1,
    ),
    Conversa(
      contato: "gabriel",
      ultimaMsg: "data da final da libertadores",
      hora: "4:00",
      naoLidas: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversas'),
      ),
      body: ListView.builder(
        itemCount: conversa.length,
        itemBuilder: (context, int i) {
          

          return ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(conversa[i].contato),
            subtitle: Text(conversa[i].ultimaMsg),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(conversa[i].hora),
                 conversa[i].naoLidas > 0
                  ? Badge(
                      label: Text('${conversa[i].naoLidas}'),
                    )
                  : const SizedBox(),
                CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.green,
                    child: Text(
                      '${conversa[i].naoLidas}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
            onTap: () {
              // Ação ao tocar na conversa
            },
          );
        },
      ),
    );
  }
}