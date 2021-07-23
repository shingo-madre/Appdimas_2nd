import 'package:flutter/material.dart';
import 'package:gemastik_tryout/screens/notification/components/notification_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NotificationList()
    );
  }
}
