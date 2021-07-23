import 'package:flutter/material.dart';
import 'package:gemastik_tryout/screens/notification/notification_screen.dart';

import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
