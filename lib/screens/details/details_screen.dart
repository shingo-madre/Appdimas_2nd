import 'package:flutter/material.dart';

import '../../models/Event.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final EventDetailsArguments agrs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: Body(event: agrs.event),
    );
  }
}

class EventDetailsArguments {
  final Event event;

  EventDetailsArguments({@required this.event});
}
