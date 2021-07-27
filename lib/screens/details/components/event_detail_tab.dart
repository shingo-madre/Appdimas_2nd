import 'package:flutter/material.dart';

class EventDetailTab extends StatelessWidget {
  const EventDetailTab({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxHeight: 40.0),
            child: Material(
              color: Colors.white,
              child: TabBar(
                indicatorPadding: EdgeInsets.symmetric(horizontal: 18),
                indicatorWeight: 5,
                indicatorColor: Colors.orange,
                tabs: [
                  Tab(
                    child: Text(
                      'Detail',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Pengaju',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                //Detail
                ListView(
                  padding: EdgeInsets.all(18),
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.orange),
                        SizedBox(width: 10),
                        Text(
                          'Gelora Sepuluh Nopember',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.timer, color: Colors.orange),
                        SizedBox(width: 10),
                        Text(
                          '3 Juli - 4 Juli',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.bookmark, color: Colors.orange),
                        SizedBox(width: 10),
                        Text(
                          'Menjaga Stan Vaksinasi',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.check_box, color: Colors.orange),
                        SizedBox(width: 10),
                        Text(
                          'Mencatat Kondisi Kesehatan \nMengecek Tekanan Darah',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),

                //Pengaju
                ListView(
                  padding: EdgeInsets.all(18),
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.asset('assets/images/profile_image_1.png'),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Davis Vaccaro',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.orange),
                        SizedBox(width: 10),
                        Text(
                          'Gelora Sepuluh Nopember',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.flag, color: Colors.orange),
                        SizedBox(width: 10),
                        Text(
                          '2 Kegiatan Diajukan \n0 Partisipasi',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}