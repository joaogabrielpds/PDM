import 'package:aula_01/features/chat/domain/entities/conversa.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aula_01/features/chat/infra/data/conversa_repository.dart';

class ConversaListBloc extends Bloc<ConversaListEvent, ConversaListState>{
  final ConversaRepository repo = ConversaRepository();
  ConversaListBloc() : super(ConversaListLoading()){


  on<ConversaListInitialize>((event, emit)async{
    await Future.delayed(Duration(seconds: 5));
      List<Conversa> dados = repo.conversas;
      if(dados.isNotEmpty){
        emit(ConversaListSuccess(conversas: dados));
      } 
      else {
        emit(ConversaListFailure(msg: 'Não há conversas'));
      }
      
      emit(ConversaListSuccess(conversas: dados));
      
    

    
  });
  on<ConversaListDuplicaConversa>((event, emit) {
    emit(ConversaListLoading());
    await Future.delayed(Duration(seconds: 5));
    repo.conversas.add(event.conversa);
    emit(ConversaListSuccess(conversas: repo.conversas));
    // Lógica para duplicar conversa
  });
    add(ConversaListInitialize());
  }
}


