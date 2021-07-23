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
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Detail',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)
                      ),
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 320,
                  color: Colors.orange,
                ),
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.orange),
                  title: Text(
                    'Gelora Sepuluh Nopember',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.timer,
                    color: Colors.orange,
                  ),
                  title: Text('3 Juli - 4 Juli', style: TextStyle(fontSize: 14)),
                ),
                ListTile(
                  leading: Icon(Icons.bookmark, color: Colors.orange),
                  title: Text('Menjaga Stan Vaksinasi', style: TextStyle(fontSize: 14)),
                ),
                ListTile(
                  leading: Icon(Icons.check_box, color: Colors.orange),
                  title: Text('Mencatat Kondisi Kesehatan \nMengecek Tekanan Darah', style: TextStyle(fontSize: 14)),
                ),
                // EventTabLayout()
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
