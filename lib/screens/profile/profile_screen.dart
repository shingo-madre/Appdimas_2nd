import 'package:flutter/material.dart';
import 'package:gemastik_tryout/constants.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white),),
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
