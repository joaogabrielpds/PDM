import 'package:aula_01/features/chat/domain/entities/conversa.dart';
sealed class ConversaListEvent {}

class ConversaListInitialize extends ConversaListEvent {}

class ConversaListDuplicaConversa extends ConversaListEvent{
  final Conversa conversa;
  ConversaListDuplicaConversa({required this.conversa});
}