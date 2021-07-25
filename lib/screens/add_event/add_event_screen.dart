import 'package:flutter/material.dart';
import 'components/body.dart';

class AddEventScreen extends StatelessWidget {
  const AddEventScreen({ Key key }) : super(key: key);
  static String routeName = "/add_event";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}