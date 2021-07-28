import 'package:flutter/material.dart';
import 'package:gemastik_tryout/models/User.dart';
import 'package:gemastik_tryout/routes.dart';
import 'package:gemastik_tryout/screens/home/home_screen.dart';
import 'package:gemastik_tryout/screens/splash/splash_screen.dart';
import 'package:gemastik_tryout/theme.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: user == null ? SplashScreen() : HomeScreen(),
      // initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}