import 'package:flutter/material.dart';
import 'package:gemastik_tryout/models/Event.dart';
import 'package:gemastik_tryout/components/event_card.dart';

class MainOnGoing extends StatelessWidget {
  const MainOnGoing({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0,),
              child: ListView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        ...List.generate(
                          listEvents.length,
                          (index) {
                            if (listEvents[index].sedangBerjalan)
                              return EventCard(event: listEvents[index], role: 'participant',);

                            return SizedBox.shrink(); 
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ) 
    );
  }
}