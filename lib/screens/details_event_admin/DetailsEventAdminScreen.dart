import 'package:flutter/material.dart';

import '../../models/Event.dart';
import 'components/body.dart';

class DetailsEventAdminScreen extends StatelessWidget {
  static String routeName = "/details_event_admin";

  @override
  Widget build(BuildContext context) {
    final EventDetailsAdminArguments agrs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: Body(event: agrs.event),
    );
  }
}

class EventDetailsAdminArguments {
  final Event event;

  EventDetailsAdminArguments({@required this.event});
}
