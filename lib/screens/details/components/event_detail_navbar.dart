import 'package:flutter/material.dart';
import 'package:gemastik_tryout/constants.dart';

class EventDetailNavBar extends StatelessWidget {
  const EventDetailNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            child: Container(
              height: 45,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.chat_rounded,
                color: kPrimaryColor,
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kPrimaryColor,
              ),
              child: Text('Mendaftar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            onTap: () {},
          )
        ],
      )),
    );
  }
}
