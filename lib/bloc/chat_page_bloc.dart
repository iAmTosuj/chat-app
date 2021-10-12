import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'chat_page_event.dart';
part 'chat_page_state.dart';

class ChatPageBloc extends Bloc<ChatPageEvent, ChatPageState> {
  ChatPageBloc() : super(ChatPageInitial()) {
    on<ChatPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
