import 'package:flutter/material.dart';

import 'components/body.dart';

class VerificationKtpScreen extends StatelessWidget {
  static String routeName = "/Verifikasi_ktp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
