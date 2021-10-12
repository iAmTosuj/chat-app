import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.document_scanner),
                    splashRadius: 24,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
