import 'package:flutter/material.dart';
import 'package:gemastik_tryout/screens/home/components/search_field.dart';
import 'package:gemastik_tryout/screens/notification/notification_screen.dart';

class EventDetailHeader extends StatelessWidget {
  const EventDetailHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Row(
        children: [
          SearchField(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, NotificationScreen.routeName);
            },
            child: Image.asset('assets/icons/notification_dot.png'),
          )
        ],
      ),
    );
  }
}
