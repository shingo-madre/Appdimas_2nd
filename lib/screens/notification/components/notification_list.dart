import 'package:flutter/material.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({ Key key }) : super(key: key);

  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Card(
                elevation: 0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 16)),
                        Text(
                          'Acara yang berjalan', 
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 16)),
                        Text(
                          '2 Juli',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      title: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Text(
                                  'Acara akan berlangsung selama 2 hari',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800
                                  ),
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                        'Anda memiliki 2 hari lagi dalam menjalankan “Relawan Kru Vaksinasi. Tetap semangat dan diskusikan dengan anggota yang lain.',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat Regular'),
                      ),
                      contentPadding: EdgeInsets.only(
                          bottom: 20, left: 15, right: 15),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}