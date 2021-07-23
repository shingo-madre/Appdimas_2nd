import 'package:flutter/material.dart';

import 'components/body.dart';

class JoinEventScreen extends StatelessWidget {
  static String routeName = "/join_event";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mendaftar"),
      ),
      body: Body(),
    );
  }
}
