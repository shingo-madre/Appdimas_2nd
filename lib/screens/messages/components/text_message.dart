import 'package:gemastik_tryout/models/ChatMessage.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key key,
    this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 180,
      height: 40,
      color: kPrimaryColor,
      child: Text(message.text, style: TextStyle(color: Colors.white),),
      // color: MediaQuery.of(context).platformBrightness == Brightness.dark
      //     ? Colors.white
      //     : Colors.black,
      // padding: EdgeInsets.symmetric(
      //   horizontal: kDefaultPadding * 0.75,
      //   vertical: kDefaultPadding / 2,
      // ),
      // decoration: BoxDecoration(
      //   color: kPrimaryColor,
      //   // color: kPrimaryColor.withOpacity(message!.isSender ? 1 : 0.1),
      //   borderRadius: BorderRadius.circular(30),
      // ),
      // child: Text(
      //   message.text,
      //   style: TextStyle(
      //     color: message.isSender
      //         ? Colors.white
      //         : kPrimaryColor,
      //   ),
      // ),
    );
  }
}
