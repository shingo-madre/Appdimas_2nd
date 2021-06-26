import 'package:flutter/material.dart';

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
                    child: Card(
                      color: Color(0xffF0F0F0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                      elevation: 0,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Text(
                              'Event Name',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily:
                                      'Montserrat SemiBold'),
                            ),
                            trailing: Text(
                              'Progress',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Montserrat SemiBold',
                                  color: Color(0xffFF591C)),
                            ),
                          ),
                          ListTile(
                            leading: Container(
                              height: 59,
                              width: 59,
                              child: Card(
                                color: Color(0xffD4D4D4),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            title: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: Icon(
                                        Icons.location_on,
                                        size: 20,
                                        color: Colors.deepOrange,
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Padding(
                                        padding:
                                            const EdgeInsets.only(
                                                bottom: 4),
                                        child: Text('Keputih Hitam',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontFamily:
                                                    'Montserrat Medium'))),
                                  ),
                                ],
                              ),
                            ),
                            subtitle: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit amet morbi arcu.',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Montserrat Regular'),
                            ),
                            contentPadding: EdgeInsets.only(
                                bottom: 20, left: 15, right: 15),
                          ),
                        ],
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ) 
    );
  }
}