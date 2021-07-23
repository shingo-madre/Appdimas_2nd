import 'package:flutter/material.dart';
import 'package:gemastik_tryout/size_config.dart';

import 'complete_profile_form.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text("Bio",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                Text(
                  "Lengkapi semua data dibawah ini untuk melakukan autentikasi akun anda",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                CompleteProfileForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
