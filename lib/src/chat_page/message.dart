import 'package:chat_app/resources/message_type.dart';
import 'package:flutter/material.dart';

class FriendMessage extends StatelessWidget {
  final MessageType type;

  const FriendMessage({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (type == MessageType.friend)
          const Image(image: AssetImage('assets/images/avatar.png')),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            margin: type == MessageType.friend
                ? const EdgeInsets.only(right: 34)
                : const EdgeInsets.only(left: 34),
            decoration: BoxDecoration(
                color: type == MessageType.friend
                    ? const Color(0xFFF7F7F7)
                    : const Color(0xFFE5F2F9),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Руководитель Сидоров Владимир Петрович'),
                ),
                Text(
                    'Здравствуйте, уважаемый пациент! Я Сидоров Владимир Петрович, руководитель. Приношу извинения за проблемы, с которыми вы столкнулись в нашей клинике. Хочу исправить сложившуюся ситуацию. Прошу вас помочь разобраться, для этого расскажите мне о проблеме подробно.')
              ],
            ),
          ),
        )
      ],
    );
  }
}
