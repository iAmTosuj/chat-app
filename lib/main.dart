import 'package:chat_app/bloc/chat_page_bloc.dart';
import 'package:chat_app/src/application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final TextEditingController textEditingController = TextEditingController();

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => ChatPageBloc(
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
                textEditingController: textEditingController))
      ],
      child: MaterialApp(
        title: 'Awesome chat app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Application(),
      ),
    );
  }
}
