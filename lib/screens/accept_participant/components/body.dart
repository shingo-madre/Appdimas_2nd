import 'package:flutter/material.dart';
import 'package:gemastik_tryout/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          width: 300.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffF3F3F3),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(top: 18, left: 18),
                leading: Image.asset('assets/images/profile_image_1.png'),
                title: Text(
                  'Davis Vaccaro',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.location_on, color: kPrimaryColor,),
                  SizedBox(width: 20,),
                  Text(
                    'Teluk Kumai Barat No. 148, Surabaya',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.date_range, color: kPrimaryColor,),
                  SizedBox(width: 20,),
                  Text(
                    '11 Januari 1997',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Lampiran',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                  ),
                ), 
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 140, 
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.asset('assets/images/foto_ktp_sample.png'),
                          Image.asset('assets/images/foto_ktp_sample.png'),
                          Image.asset('assets/images/foto_ktp_sample.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 180,
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                        ),
                      ),
                      child: Text(
                        "Tolak",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 180,
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0)),
                      ),
                      child: Text(
                        "Terima",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
        // Container(
        //   height: 418,
        //   margin: EdgeInsets.all(20),
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(15),
        //     color: Color(0xffF3F3F3)
        //   ),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.stretch,
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       ListTile(
        //         contentPadding: EdgeInsets.only(top: 20, left: 20),
        //         leading: Image.asset('assets/images/profile_image_1.png'),
        //         title: Text(
        //           'Davis Vaccaro',
        //           style: TextStyle(
        //             fontWeight: FontWeight.bold
        //           ),
        //         ),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.location_on_outlined, color: Colors.orange,),
        //         title: Text(
        //           'Teluk Kumai Barat No. 148, Surabaya',
        //           style: TextStyle(
        //             fontSize: 14,
        //             fontWeight: FontWeight.bold
        //           ),
        //         ),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.date_range_outlined, color: Colors.orange),
        //         title: Text(
        //           '11 Januari 1997',
        //           style: TextStyle(
        //             fontSize: 14,
        //             fontWeight: FontWeight.bold
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.only(left: 20),
        //         child: Text(
        //           'Lampiran',
        //           style: TextStyle(
        //             color: Colors.black,
        //             fontWeight: FontWeight.bold
        //           ),
        //         ), 
        //       ),
        //       SingleChildScrollView(
        //         padding: EdgeInsets.all(20),
        //         child: Column(
        //           mainAxisSize: MainAxisSize.min,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: <Widget>[
        //             SizedBox(
        //               height: 120, 
        //               child: ListView(
        //                 scrollDirection: Axis.horizontal,
        //                 children: [
        //                   Image.asset('assets/images/foto_ktp_sample.png'),
        //                   Image.asset('assets/images/foto_ktp_sample.png'),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         children: [
        //           Expanded(
        //             child: TextButton(
        //               onPressed: () {}, 
        //               style: ButtonStyle(
        //                 backgroundColor: MaterialStateProperty.all<Color>(Color(0xffEAEAEA)),
        //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //                   RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),)
        //                   )
        //                 )
        //               ),
        //               child: Text(
        //                 'Tolak',
        //                 style: TextStyle(color: Colors.black),
        //               )
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               style: ButtonStyle(
        //                 backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
        //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //                   RoundedRectangleBorder(
        //                     borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10),)
        //                   )
        //                 )
        //               ),
        //               onPressed: () {}, 
        //               child: Text(
        //                 'Terima',
        //                 style: TextStyle(color: Colors.white),
        //               )
        //             ),
        //           )
        //         ],
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}