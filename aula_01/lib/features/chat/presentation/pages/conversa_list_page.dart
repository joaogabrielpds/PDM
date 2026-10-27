import 'package:aula_01/features/chat/domain/entities/conversa.dart';
import 'package:aula_01/features/chat/infra/data/conversa_repository.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_bloc.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversaListPage extends StatelessWidget {
  final ConversaRepository repo = ConversaRepository();
  ConversaListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConversaListBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('Conversas')),
        body: BlocBuilder<ConversaListBloc, ConversaListState>(
          builder:(context, state) {
            if(state is ConversaListSuccess){
            return Scaffold(
      appBar: AppBar(title: Text('Conversas')),
      body: ListView.builder(
        itemCount: repo.conversas.length,
        itemBuilder: (BuildContext context, int i) {
          Conversa conversa = repo.conversas[i];
          return ListTile(
            title: Text(conversa.contato),
            subtitle: Text(conversa.ultimaMsg),
            leading: CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              foregroundColor: Colors.white,
              child: Text(conversa.sigla),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(conversa.hora),
                conversa.naoLidas > 0
                    ? Badge(label: Text('${conversa.naoLidas}'))
                    : SizedBox(),
              ],
            ),
          );
        },
      ),
    );  
            }
            if(state is ConversaListFailure){
              
            }
            return CircularProgressIndicator();
          }
      ),
    ),
    );
  }
}
