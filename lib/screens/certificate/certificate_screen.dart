import 'package:flutter/material.dart';
import 'components/body.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({ Key key }) : super(key: key);
  static String routeName = "/certificate";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sertifikat'),
      ),
      body: Body(),
    );
  }
}