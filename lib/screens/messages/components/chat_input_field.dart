import 'package:flutter/material.dart';

import '../../../constants.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.add, color: Colors.white),
            SizedBox(width: kDefaultPadding),
            Icon(Icons.camera_alt_outlined, color: Colors.white,),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    SizedBox(width: kDefaultPadding / 4),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Type message",
                        ),
                      ),
                    ),
                    SizedBox(width: kDefaultPadding / 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
