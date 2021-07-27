import 'package:flutter/material.dart';
import 'package:gemastik_tryout/models/Event.dart';
import 'package:gemastik_tryout/screens/details_event_admin/DetailsEventAdminScreen.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key key,
    this.width = 140,
    this.aspectRetio = 1.02,
    @required this.event,
  }) : super(key: key);

  final double width, aspectRetio;
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () => Navigator.of(context, rootNavigator: true).pushNamed(
          DetailsEventAdminScreen.routeName,
          arguments: EventDetailsArguments(event: event)
        ),
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
                  event.title,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily:
                          'Montserrat SemiBold'),
                ),
                trailing: Text(
                  '13 - 14 Juli',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat SemiBold',
                      color: Color(0xff990303)),
                ),
              ),
              ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Hero(
                      tag: event.id.toString(),
                      child: Image.asset(
                        event.images[0],
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
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
    );
  }
}
