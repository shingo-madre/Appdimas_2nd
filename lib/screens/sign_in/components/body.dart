import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/no_account_text.dart';
import 'package:gemastik_tryout/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import '../../../size_config.dart';
import 'sign_form.dart';
import 'package:gemastik_tryout/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  SignForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  NoAccountText(),
                  SizedBox(height: getProportionateScreenHeight(150)),
                  Text(
                    "Atau login dengan ",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        color: kPrimaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                      provider.login();
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/icons/google-icon.png'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
