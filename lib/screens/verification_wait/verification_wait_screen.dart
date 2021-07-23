import 'package:flutter/material.dart';
import 'components/body.dart';

class VerificationWaitScreen extends StatelessWidget {
  static String routeName = "/verification_wait";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      backgroundColor: Color(0xFFFF652C),
    );
  }
}
