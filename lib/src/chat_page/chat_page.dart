import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ChatPage extends StatelessWidget {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  ChatPage({Key? key}) : super(key: key) {
    itemPositionsListener.itemPositions.addListener(() => print(
        itemPositionsListener.itemPositions.value.map((val) => val.index)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ScrollablePositionedList.builder(
              itemCount: 30,
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                      height: 60,
                      width: double.infinity,
                      child: Text('Item $index')),
                  Divider()
                ],
              ),
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
            )),
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
                      onPressed: () {
                        itemScrollController.jumpTo(index: 20);
                      },
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
