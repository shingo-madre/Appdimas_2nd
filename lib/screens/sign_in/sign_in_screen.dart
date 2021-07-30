import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gemastik_tryout/provider/google_sign_in.dart';
import 'package:gemastik_tryout/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.onAuthStateChanged,
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);
            if(provider.isSigningIn == true) {
              return CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return HomeScreen();
            } else {
              return Body();
            }
          },
        ),
      ),
    );
  }
}
