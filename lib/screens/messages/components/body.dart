import 'package:chat_app/constants.dart';
import 'package:chat_app/models/ChatMessage.dart';
import 'package:flutter/material.dart';
import 'chat_input.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: demoChatMessages.length,
                itemBuilder: (context, index) => Message(
                      message: demoChatMessages[index],
                    ))),
        ChatInputArea()
      ],
    );
  }
}

class Message extends StatelessWidget {
  final ChatMessage message;
  const Message({
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        )
      ],
    );
  }
}
