import 'package:flutter/material.dart';
import 'package:gemastik_tryout/volunteer/MainHistory.dart';
import 'package:gemastik_tryout/volunteer/MainMyEvent.dart';
import 'package:gemastik_tryout/volunteer/MainOngoing.dart';

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
        appBar: new AppBar(
          elevation: 0,
          title: Text(
              'Volunteer',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Montserrat'
              ),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.deepOrange),
        ),
        drawer: Drawer(),
        body: DefaultTabController(
          length: 3,
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
                          'Ongoing',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'History',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'My Event',
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
                    MainHistory(),
                    MainMyEvent(),
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
