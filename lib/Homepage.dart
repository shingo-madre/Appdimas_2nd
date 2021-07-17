import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'EventDetails.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double screnWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child:
              Container(
                height: 30,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    suffixIcon: Icon(Icons.menu),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                ),
              ),
            ),
            Container(
              width: 50,
              child: Icon(Icons.notifications),
            )
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.deepOrange),
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //main section (event cards)
              Container(
                color: Colors.white,
                width: screnWidth,
                height: screenHeight - 16,
                child: EventCard(),
              ),
            ],
          ),
        )
      )
    );
  }
}

class EventCard extends StatefulWidget {
  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {

  double cardHeight = 220;
  double cardWidth = 350;

  Container card() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      height: cardHeight,
      width: cardWidth,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => EventDetail())
          );
        },
        child: Card(
          color: Color(0xffF0F0F0),
          clipBehavior: Clip.none,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.transparent,
                width: 1
            ),
            borderRadius: BorderRadius.circular(25)
        ),
        elevation: 0,
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: cardHeight * 0.56,
              decoration: BoxDecoration(
                  color: Color(0xffF0F0F0),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  )
              ),
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Color(0xffD4D4D4),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: double.maxFinite,
                        height: 23,
                        color: Color(0xffD4D4D4),
                        child: Text(
                          'LOREM IPSUM',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat Regular'
                          ),
                        ),
                      ),
                      Container(
                        height: 0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: double.maxFinite,
                        height: 32,
                        color: Color(0xffD4D4D4),
                        child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in.',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat Regular'
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
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.symmetric(vertical: 10),
          children: <Widget>[
            card(),
            card(),
            card(),
            card()
        ],
      ),
    );
  }
}

