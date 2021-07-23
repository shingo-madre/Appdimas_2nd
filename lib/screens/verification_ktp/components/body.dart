import 'package:flutter/material.dart';
import 'package:gemastik_tryout/size_config.dart';

import 'verification_ktp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Autentikasi",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                Text(
                  "Autentikasi KTP anda diperlukan untuk memastikan data yang anda masukan benar dan memastikan status kependudukan anda",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                VerificationKtpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
