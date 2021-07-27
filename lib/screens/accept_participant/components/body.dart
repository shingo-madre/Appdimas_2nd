import 'package:flutter/material.dart';
import 'package:gemastik_tryout/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[300]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(top: 20, left: 20),
                leading: Image.asset('assets/images/profile_image_1.png'),
                title: Text(
                  'Davis Vaccaro',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.location_on_outlined, color: Colors.orange,),
                title: Text(
                  'Teluk Kumai Barat No. 148, Surabaya',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.date_range_outlined, color: Colors.orange),
                title: Text(
                  '11 Januari 1997',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Lampiran',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ), 
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 120, 
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.asset('assets/images/foto_ktp_sample.png'),
                          Image.asset('assets/images/foto_ktp_sample.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {}, 
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),)
                            )
                          )
                        ),
                        child: Text(
                          'Tolak',
                          style: TextStyle(color: Colors.black),
                        )
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10),)
                            )
                          )
                        ),
                        onPressed: () {}, 
                        child: Text(
                          'Terima',
                          style: TextStyle(color: Colors.white),
                        )
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}