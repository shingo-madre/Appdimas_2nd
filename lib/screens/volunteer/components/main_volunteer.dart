import 'package:flutter/material.dart';
import 'main_my_event.dart';
import 'main_ongoing.dart';

class MainVolunteer extends StatefulWidget {
  const MainVolunteer({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MainVolunteerState createState() => _MainVolunteerState();
}

class _MainVolunteerState extends State<MainVolunteer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                    indicatorColor: Colors.deepOrange,
                    tabs: [
                      Tab(
                        child: Text(
                          'Sedang Berjalan',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Acara Saya',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    MainOnGoing(),
                    MainMyEvent()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
