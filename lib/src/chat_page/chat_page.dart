import 'package:chat_app/bloc/chat_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<ChatPageBloc, ChatPageState>(
              builder: (context, state) {
                var bloc = context.read<ChatPageBloc>();

                return Expanded(
                    child: ScrollablePositionedList.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) => Column(
                    children: [
                      SizedBox(
                          height: 60,
                          width: double.infinity,
                          child: Text('Item $index')),
                      const Divider()
                    ],
                  ),
                  itemScrollController: bloc.itemScrollController,
                  itemPositionsListener: bloc.itemPositionsListener,
                ));
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.document_scanner),
                      splashRadius: 24,
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: const Color(0xFFF7F7F7),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Сообщение...",
                            contentPadding: const EdgeInsets.all(8)),
                        minLines: 1,
                        maxLines: 5,
                      ),
                    )),
                    IconButton(
                      onPressed: () =>
                          context.read<ChatPageBloc>().add(ChatPageJump(20)),
                      icon: const Icon(
                        Icons.document_scanner,
                        color: Colors.amber,
                      ),
                      splashRadius: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
