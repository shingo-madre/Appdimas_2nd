import 'package:flutter/material.dart';
import 'package:gemastik_tryout/models/Event.dart';
import 'package:gemastik_tryout/screens/details/components/event_images.dart';
import 'package:gemastik_tryout/screens/details/components/event_description.dart';
import 'package:gemastik_tryout/screens/details/components/event_detail_tab.dart';

import 'event_detail_navbar.dart';

class Body extends StatelessWidget {
  final Event event;

  const Body({Key key, @required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(420.0),
        child: ListView(
          children: [
            EventImages(event: event),
            Column(
              children: [
                EventDescription(event: event)
              ],
            )
          ],
        )
      ),
      body: EventDetailTab(),
      bottomNavigationBar: EventDetailNavBar()
    );
  }
}
