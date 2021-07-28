import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/form_error.dart';
import 'package:gemastik_tryout/helper/keyboard.dart';
import 'package:gemastik_tryout/screens/home/home_screen.dart';
import 'package:gemastik_tryout/screens/sign_in/components/sign_in_failed.dart';
import 'package:gemastik_tryout/services/auth.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  bool loading = false;
  final List<String> errors = [];
  final AuthService _auth = AuthService();

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return loading ? CircularProgressIndicator() : Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Pengguna',
            style: TextStyle(
                color: Color(0xffff652C),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kEmailNullError);
              } else if (emailValidatorRegExp.hasMatch(value)) {
                removeError(error: kInvalidEmailError);
              }
              setState(() {
                email = value;                
              });
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: kEmailNullError);
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                addError(error: kInvalidEmailError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "Masukkan email anda",
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          Text(
            'Password',
            style: TextStyle(
              color: Color(0xffff652C),
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => password = newValue,
            onChanged: (value) {
              setState(() {
                password = value;                
              });
              if (value.isNotEmpty) {
                removeError(error: kPassNullError);
              } else if (value.length >= 8) {
                removeError(error: kShortPassError);
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty) {
                addError(error: kPassNullError);
                return "";
              } else if (value.length < 8) {
                addError(error: kShortPassError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: "Masukkan Password Anda",
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(10)),
          DefaultButton(
            text: "Login",
            press: () async {
              // dynamic result = await _auth.signInAnon();
              // if (result == null) {
              //   print('error');
              // } else {
              //   print('signed in');
              //   print(result.uid);
              //   Navigator.pushNamed(context, HomeScreen.routeName);
              // }
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                KeyboardUtil.hideKeyboard(context);
                dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                setState(() { loading = true; });
                if(result == null) {
                  loading = false;
                  Navigator.push(context, MaterialPageRoute(builder: (_) => SignInFailed()));
                } else {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
