import 'package:flutter/material.dart';
import 'components/body.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({ Key key }) : super(key: key);
  static String routeName = "/setting";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
      ),
      body: Body(),
    );
  }
}