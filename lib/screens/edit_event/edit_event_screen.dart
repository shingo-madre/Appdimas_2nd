import 'package:flutter/material.dart';
import 'components/body.dart';

class EditEventScreen extends StatelessWidget {
  static String routeName = "/edit_event";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ubah Acara'
        ),
      ),
      body: Body(),
    );
  }
}