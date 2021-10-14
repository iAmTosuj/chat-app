import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

part 'chat_page_event.dart';
part 'chat_page_state.dart';

class ChatPageBloc extends Bloc<ChatPageEvent, ChatPageState> {
  final ItemScrollController itemScrollController;
  final ItemPositionsListener itemPositionsListener;
  final TextEditingController textEditingController;

  ChatPageBloc(
      {required this.itemScrollController,
      required this.itemPositionsListener,
      required this.textEditingController})
      : super(ChatPageState()) {
    itemPositionsListener.itemPositions.addListener(() => print(
        itemPositionsListener.itemPositions.value.map((val) => val.index)));
    textEditingController.text = '423141';

    on<ChatPageJump>((event, emit) {
      itemScrollController.jumpTo(index: event.index);
    });

    on<ChatPageSendMessage>((event, emit) {
      textEditingController.clear();
    });
  }
}
