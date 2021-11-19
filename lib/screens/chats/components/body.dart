import 'package:chat_app/components/filled_outline_button.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/models/Chat.dart';
import 'package:flutter/material.dart';

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
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding - 5, 0, kDefaultPadding, kDefaultPadding - 7),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Recent Messages"),
              SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) => ChatCard(
                      chats: chatsData[index],
                    )))
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  final Chat chats;
  const ChatCard({
    required this.chats,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding - 3, vertical: kDefaultPadding * 0.75),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: Image.asset(chats.image),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chats.name,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Opacity(
                  opacity: 0.65,
                  child: Text(
                    chats.lastMessage,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          )),
          chats.isActive
              ? Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                      child: Text(
                        "20",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Text(chats.time,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.green[600]))
                  ],
                )
              : Opacity(opacity: 0.65, child: Text(chats.time))
        ],
      ),
    );
  }
}
