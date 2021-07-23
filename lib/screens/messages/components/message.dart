import 'package:gemastik_tryout/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'text_message.dart';

class Message extends StatelessWidget {
  const Message({
    Key key,
    @required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding + 5),
      child: Row(
        mainAxisAlignment: message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/Profile Image.png"),
            ),
            SizedBox(width: kDefaultPadding / 2),
          ],
          messageContaint(message),
        ],
      ),
    );
  }
}