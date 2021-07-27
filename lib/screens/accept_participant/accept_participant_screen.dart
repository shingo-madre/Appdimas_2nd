import 'package:flutter/material.dart';
import 'components/body.dart';

class AcceptParticipantScreen extends StatelessWidget {
  static String routeName = "/accept_event_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relawan'),
      ),
      body: Body(),
    );
  }
}