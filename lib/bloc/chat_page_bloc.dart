import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

part 'chat_page_event.dart';
part 'chat_page_state.dart';

class ChatPageBloc extends Bloc<ChatPageEvent, ChatPageState> {
  final ItemScrollController itemScrollController;
  final ItemPositionsListener itemPositionsListener;

  ChatPageBloc(
      {required this.itemScrollController, required this.itemPositionsListener})
      : super(ChatPageState()) {
    itemPositionsListener.itemPositions.addListener(() => print(
        itemPositionsListener.itemPositions.value.map((val) => val.index)));

    on<ChatPageJump>((event, emit) {
      itemScrollController.jumpTo(index: event.index);
    });
  }
}
