import 'package:flutter/material.dart';
import 'package:gemastik_tryout/routes.dart';
import 'package:gemastik_tryout/screens/splash/splash_screen.dart';
import 'package:gemastik_tryout/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: SplashScreen(),
      // initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
