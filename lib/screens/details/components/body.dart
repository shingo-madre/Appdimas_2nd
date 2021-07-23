import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/coustom_bottom_nav_bar.dart';
import 'package:gemastik_tryout/components/default_button.dart';
import 'package:gemastik_tryout/models/Product.dart';
import 'package:gemastik_tryout/models/Event.dart';
import 'package:gemastik_tryout/screens/details/components/event_images.dart';
import 'package:gemastik_tryout/screens/details/components/event_description.dart';
import 'package:gemastik_tryout/screens/details/components/event_tab_layout.dart';
import 'package:gemastik_tryout/size_config.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';
import 'event_detail_navbar.dart';

class Body extends StatelessWidget {
  // final Product product;
  final Event event;

  // const Body({Key key, @required this.product}) : super(key: key);
  const Body({Key key, @required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          EventImages(event: event),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                EventDescription(
                  event: event,
                ),
                EventTabLayout()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: EventDetailNavBar(),
    );
      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat_rounded),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //   ],
      //   backgroundColor: Colors.white,
      // ),
  }
}
