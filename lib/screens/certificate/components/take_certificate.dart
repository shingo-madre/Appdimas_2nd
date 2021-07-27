import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/default_button.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:gemastik_tryout/screens/home/home_screen.dart';

class TakeCertificate extends StatelessWidget {
  const TakeCertificate({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sertifikat'),
      ),
      body: (
        Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Text(
                '“Relawan Kru Vaksinasi”',
                style: kSubHeaderText,
              ),
              SizedBox(height: 40,),
              Container(
                height: 200,
                width: 350,
                color: Colors.grey,
              ),
              SizedBox(height: 40,),
              Text(
                'Ini sertifikat anda',
                style: kHeaderText,
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Anda telah mencapai sejauh ini membantu banyak orang. Ini adalah bentuk apresisasi dari kami.',
                  style: kParagraphText,
                  textAlign: TextAlign.center,
                ), 
              ),
              SizedBox(height: 70,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: DefaultButton(
                  text: 'Ambil',
                  press: () {
                    Navigator.of(context).pushNamed(HomeScreen.routeName);
                  },
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}