import 'package:flutter/material.dart';
import 'package:gemastik_tryout/constants.dart';

import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 130,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                color: kPrimaryColor,
              ),
              Positioned(
                top: 30,
                left: 20,
                child: ProfilePic(),
              ),
              Positioned(
                top: 60,
                right: 20,
                child: InkWell(
                  onTap: () {},
                  child: Text('Ubah Profil', style: TextStyle(color: Colors.white, fontSize: 16),),
                ),
              )
            ],
          ),
        ),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          leading: Text(
            'Zaire Levin',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          title: Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              'Mahasiswa',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [Icon(Icons.star), Text('4,7')],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'zaire.levin@gmail.com',
              style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 5)),
        profileInfo(Icons.location_on_outlined, 'Nginden Intan Timur XVII No.1, Surabaya'),
        profileInfo(Icons.date_range_outlined, '12 Maret 2000'),
        profileInfo(Icons.phone, '+628312357'),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 18.0)),
                  Text('Riwayat Acara', style: TextStyle(color: Colors.grey, fontSize: 18),),
                ],
              ),
            ]
          )
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0,),
            child: ListView(
              children: [
                eventHistory(),
                eventHistory(),
              ],
            ),
          ),
        )
      ],
    );
  }

  Container profileInfo(leadingIcon, infoText) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(leadingIcon, color: kPrimaryColor,),
                onPressed: () => {},
              ),
              Padding(padding: EdgeInsets.only(left: 20.0)),
              Text(infoText, style: TextStyle(color: Colors.black, fontSize: 15),),
            ],
          ),
        ]
      )
    );
  }

  Container eventHistory() {
    return Container(
      child: Card(
        color: Color(0xffF0F0F0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.0),
        ),
        elevation: 0,
        child: Column(
          children: [
            ListTile(
              leading: Text(
                'Relawan Vaksinasi',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily:
                        'Montserrat SemiBold'),
              ),
              trailing: Text(
                '13 - 14 Juli',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat SemiBold',
                    color: Color(0xff990303)),
              ),
            ),
            ListTile(
              leading: Container(
                height: 59,
                width: 59,
                child: Card(
                  color: Color(0xffD4D4D4),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0),
                  ),
                ),
              ),
              title: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Icon(
                          Icons.location_on,
                          size: 20,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                          padding:
                              const EdgeInsets.only(
                                  bottom: 4),
                          child: Text('Keputih Hitam',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily:
                                      'Montserrat Medium'))),
                    ),
                  ],
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit amet morbi arcu.',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Montserrat Regular'),
              ),
              contentPadding: EdgeInsets.only(
                  bottom: 20, left: 15, right: 15),
            ),
          ],
        )
      ),
    );
  }
}
