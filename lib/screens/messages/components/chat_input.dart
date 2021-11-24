import 'package:flutter/material.dart';

import '../../../constants.dart';

class ChatInputArea extends StatelessWidget {
  const ChatInputArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 30,
                color: Colors.grey.withOpacity(0.2))
          ]),
      child: SafeArea(
          child: Row(
        children: [
          Icon(
            Icons.mic,
            color: kPrimaryColor,
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(40)),
            child: Row(
              children: [
                Icon(
                  Icons.sentiment_satisfied_alt_outlined,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.65),
                ),
                SizedBox(
                  width: kDefaultPadding / 3,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Type Message", border: InputBorder.none),
                )),
                Icon(
                  Icons.attach_file,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.65),
                ),
                SizedBox(width: kDefaultPadding / 4),
                Icon(
                  Icons.camera_alt,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.65),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
