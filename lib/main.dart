import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gemastik_tryout/routes.dart';
import 'package:gemastik_tryout/screens/splash/splash_screen.dart';
import 'package:gemastik_tryout/theme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
