import 'package:chat_app/models/Chat.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class ChatCard extends StatelessWidget {
  final Chat chats;
  final VoidCallback press;
  const ChatCard({
    required this.press,
    required this.chats,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding - 3, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Image.asset(chats.image),
                ),
                if (chats.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor,
                          border: Border.all(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              width: 3)),
                    ),
                  )
              ],
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
      ),
    );
  }
}
