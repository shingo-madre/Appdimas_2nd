import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/main_event_card.dart';
import 'package:gemastik_tryout/models/Event.dart';

class ListEventAll extends StatefulWidget {
  const ListEventAll({
    Key key,
    @required this.tabSelected, 
  }) : super(key: key);

  final String tabSelected;

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
                if(widget.tabSelected == 'semua') {
                  if (listEvents[index].semua)
                    return MainEventCard(event: listEvents[index]);
                } else if(widget.tabSelected == 'terbaru') {
                  if (listEvents[index].terbaru)
                    return MainEventCard(event: listEvents[index]);
                } else if(widget.tabSelected == 'populer') {
                  if (listEvents[index].populer)  
                    return MainEventCard(event: listEvents[index]);
                } else if(widget.tabSelected == 'terdekat') {
                  if (listEvents[index].terbaru)  
                    return MainEventCard(event: listEvents[index]);
                } 

                return SizedBox.shrink(); 
              },
            ),
          ],
        ),
      ),
    );
  }
}