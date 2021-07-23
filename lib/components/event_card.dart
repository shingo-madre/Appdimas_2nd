import 'package:flutter/material.dart';
import 'package:gemastik_tryout/models/Event.dart';
import 'package:gemastik_tryout/screens/details/details_screen.dart';

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
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      height: 220,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          DetailsScreen.routeName,
          arguments: EventDetailsArguments(event: event),
        ),
        child: Card(
          clipBehavior: Clip.none,
          elevation: 0,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                height: 220 * 0.60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Hero(
                        tag: event.id.toString(),
                        child: Image.asset(
                          event.images[0],
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 15,
                        child: Container(
                          width: 120,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8, top: 1),
                            child: Text(
                              "Terakhir "+event.jadwal,
                              style: TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: 23,
                          child: Text(
                            event.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat Regular'
                            ),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          height: 32,
                          child: Text(
                            event.description,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Montserrat Regular',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
