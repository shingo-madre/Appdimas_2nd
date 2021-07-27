import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/default_button.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:gemastik_tryout/screens/certificate/components/take_certificate.dart';

class Body extends StatelessWidget {
  const Body({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Text(
          'Selamat sudah menyelesaikan',
          style: kHeaderText
        ),
        Text(
          '“Relawan Kru Vaksinasi”',
          style: kSubHeaderText
        ),
        Image.asset('assets/images/participated_finish.png'),
        Text(
          'Klik lanjut untuk mengambil sertifikat  anda',
          style: kParagraphText,
        ),
        SizedBox(height: 30,),
        Container(
          width: 300,
          child: DefaultButton(
            text: 'Lanjut',
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => TakeCertificate()));
            },
          ),
        )
      ],
    );
  }
}