import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/event_card.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:gemastik_tryout/screens/add_event/add_event_screen.dart';
import 'package:gemastik_tryout/models/Event.dart';

class MainMyEvent extends StatelessWidget {
  const MainMyEvent({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: ListView(
                children: [ 
                  Container(
                    height: 60,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xffF0F0F0)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )
                        )
                      ),
                      onPressed: () => Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (_)=> AddEventScreen())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_circle_outline_outlined, color: kPrimaryColor,),
                          Text(
                            'Tambah Acara Baru',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        ...List.generate(
                          listEvents.length,
                          (index) {
                            if (listEvents[index].acaraSaya)
                              return EventCard(event: listEvents[index], role: 'admin',);

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