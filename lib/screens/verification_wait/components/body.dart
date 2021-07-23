import 'package:flutter/material.dart';
import 'package:gemastik_tryout/screens/home/home_screen.dart';
import 'package:gemastik_tryout/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.1),
        Text(
          'Selamat datang di Nulungi',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Image.asset(
            "assets/images/verification_wait.png",
            height: SizeConfig.screenHeight * 0.5,
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            "Mohon tunggu 1x24 jam sampai proses verifikasi data anda dikonfirmasi",
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.white)
            ),
            child: Text(
              "Lanjut",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                color: Color(0xFFFF652C),
              ),
            ),
          ),
          // child: DefaultButton(
          //   text: "Lanjut",
          //   press: () {
          //     Navigator.pushNamed(context, HomeScreen.routeName);
          //   },
          // ),
        ),
        Spacer(),
      ],
    );
  }
}
