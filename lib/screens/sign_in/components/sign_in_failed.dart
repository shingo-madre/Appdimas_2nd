import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/default_button.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:gemastik_tryout/screens/sign_in/sign_in_screen.dart';

class SignInFailed extends StatelessWidget {
  const SignInFailed({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sign in failed'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  Icon(Icons.warning_amber_outlined, size: 60, color: Colors.yellow,),
                  SizedBox(height: 50,),
                  Text(
                    'Email atau Password Anda Salah\nSilakan Coba Lagi',
                    style: kHeaderText,
                    textAlign: TextAlign.center,
                  ),   
                  SizedBox(height: 200,),
                ],
              ),
            ),
            DefaultButton(
              text: 'Kembali Sign In',
              press: () {
                Navigator.of(context).pushNamed(SignInScreen.routeName);  
              },
            ),
          ],
        ),
      )
    );
  }
}