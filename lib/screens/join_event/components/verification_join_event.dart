import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/default_button.dart';
import 'package:gemastik_tryout/screens/home/home_screen.dart';
import 'package:gemastik_tryout/size_config.dart';

class VerificationJoinEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            Text(
              'Relawan Kru Vaksinasi',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Image.asset(
              "assets/images/participated_wait.png",
              height: SizeConfig.screenHeight * 0.5,
            ),
            Text(
              "Terima kasih atas partisipasi anda!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Mohon tunggu admin untuk mengonfirmasi partisipasi anda",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: DefaultButton(
                text: "Lanjut",
                press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
