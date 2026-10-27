import 'package:aula_01/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:aula_01/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversaListBloc extends Bloc<ConversaListEvent, ConversaListState>{
  ConversaListBloc() : super(ConversaListLoading());
}