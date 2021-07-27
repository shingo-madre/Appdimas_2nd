import 'package:flutter/material.dart';
import 'package:gemastik_tryout/screens/home/components/list_event_all.dart';

class EventTabLayout extends StatefulWidget {
  const EventTabLayout({Key key}) : super(key: key);

  @override
  _EventTabLayoutState createState() => _EventTabLayoutState();
}

class _EventTabLayoutState extends State<EventTabLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
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
                        'Semua',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Terbaru',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Populer',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Terdekat',
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
                  ListEventAll(tabSelected: 'semua',),
                  ListEventAll(tabSelected: 'terbaru'),
                  ListEventAll(tabSelected: 'populer'),
                  ListEventAll(tabSelected: 'terdekat'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
