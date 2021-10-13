part of 'chat_page_bloc.dart';

class ChatPageState {
  final int indexBottomElem;
  final int indexToScroll;

  ChatPageState({this.indexBottomElem = 0, this.indexToScroll = 0});

  ChatPageState copyWith({int? indexBottomElem, int? indexToScroll}) {
    return ChatPageState(
        indexBottomElem: indexBottomElem ?? this.indexBottomElem,
        indexToScroll: indexToScroll ?? this.indexToScroll);
  }
}
