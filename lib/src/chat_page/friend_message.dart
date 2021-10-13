import 'package:flutter/material.dart';

class FriendMessage extends StatelessWidget {
  const FriendMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(image: AssetImage('assets/images/avatar.png')),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            margin: const EdgeInsets.only(right: 34),
            decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7),
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
