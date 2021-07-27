import 'package:flutter/material.dart';
import 'package:gemastik_tryout/models/Event.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gemastik_tryout/screens/accept_participant/accept_participant_screen.dart';
import 'package:gemastik_tryout/screens/edit_event/edit_event_screen.dart';

import '../../../size_config.dart';

class EventImagesAdmin extends StatefulWidget {
  const EventImagesAdmin({
    Key key,
    @required this.event,
  }) : super(key: key);

  final Event event;

  @override
  _EventImagesAdminState createState() => _EventImagesAdminState();
}

class _EventImagesAdminState extends State<EventImagesAdmin> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(0)),
            child: Stack(
              children: [
                Hero(
                  tag: widget.event.id.toString(),
                  child: Image.asset(widget.event.images[selectedImage]),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: getProportionateScreenWidth(70),
                      width: getProportionateScreenWidth(50),
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: SvgPicture.asset(
                          "assets/icons/Back Icon.svg",
                          height: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: 20,top: 30),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true).pushNamed(
                                EditEventScreen.routeName,
                              );
                            },
                            child: Text(
                              'Ubah',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Image.asset('assets/icons/share_outline.png'),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: <Color>[
                          Colors.orange.withOpacity(0.35),
                          Colors.transparent,
                        ],
                        tileMode: TileMode.repeated,
                      )
                    ),
                  ),
                ),
                Positioned(
                  bottom: 75,
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
                        "Terakhir "+widget.event.jadwal,
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    )
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 15,
                  child: Text(
                    widget.event.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800
                    ),
                  )
                ),
                Positioned(
                  bottom: 20,
                  left: 15,
                  child: Text(
                    'Kesehatan',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ),
              ],
            )
          ),
        ),
      ],
    );
  }
}
