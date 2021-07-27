import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/main_event_card.dart';
import 'package:gemastik_tryout/models/Event.dart';

class ListEventAll extends StatefulWidget {
  const ListEventAll({Key key}) : super(key: key);

  @override
  _ListEventAllState createState() => _ListEventAllState();
}

class _ListEventAllState extends State<ListEventAll> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ...List.generate(
              listEvents.length,
              (index) {
                if (listEvents[index].isPopular)
                  return MainEventCard(event: listEvents[index]);

                return SizedBox.shrink(); 
              },
            ),
          ],
        ),
      ),
    );
  }
}