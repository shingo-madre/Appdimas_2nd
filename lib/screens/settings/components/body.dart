import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({ Key key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            'Akun',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Notifikasi',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
          trailing: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;                
              });
            },
            activeTrackColor: Colors.grey[300],
            activeColor: Colors.green,
          ),
        ),
        ListTile(
          title: Text(
            'Tampilan dan Suara',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Bahasa',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
        )
      ],
    );
  }
}