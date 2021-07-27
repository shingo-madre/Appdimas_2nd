import 'package:flutter/material.dart';

import '../../models/Event.dart';
import 'components/body.dart';

class DetailsEventParticipantScreen extends StatelessWidget {
  static String routeName = "/details_event_participant";

  @override
  Widget build(BuildContext context) {
    final EventDetailsParticipantArguments agrs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: Body(event: agrs.event),
    );
  }
}

class EventDetailsParticipantArguments {
  final Event event;

  EventDetailsParticipantArguments({@required this.event});
}
