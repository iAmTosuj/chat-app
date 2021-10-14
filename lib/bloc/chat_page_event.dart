part of 'chat_page_bloc.dart';

@immutable
abstract class ChatPageEvent {}

class ChatPageJump extends ChatPageEvent {
  final int index;

  ChatPageJump(this.index);
}

class ChatPageSendMessage extends ChatPageEvent {
  final String message;

  ChatPageSendMessage(this.message);
}
