import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/default_button.dart';
import 'package:gemastik_tryout/screens/home/home_screen.dart';
import 'package:gemastik_tryout/screens/verification_wait/verification_wait_screen.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class VerificationKtpForm extends StatefulWidget {
  @override
  _VerificationKtpFormState createState() => _VerificationKtpFormState();
}

class _VerificationKtpFormState extends State<VerificationKtpForm> {
  File _fotoKTP;
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  Future<void> _pickImage(ImageSource source) async {
    File selected = await ImagePicker.pickImage(source: source);

    setState(() {
      _fotoKTP = selected;
    });
  }

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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            height: 250.0,
            child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffE5E5E5),
                ),
                child: Center(
                  child: _fotoKTP != null
                      ? Image.file(_fotoKTP)
                      : Image.asset(
                          'assets/icons/autentikasi-ktp.png',
                          height: 180,
                        ),
                )),
          ),
          InkWell(
            child: Container(
              height: 50.0,
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffEDEDED),
                  ),
                  child: Center(
                    child: Text(
                      "Choose Photo",
                      style: TextStyle(color: Colors.orange, fontSize: 18),
                    ),
                  )),
            ),
            onTap: () {
              _pickImage(ImageSource.gallery);
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(56),
                child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),),
                    backgroundColor: MaterialStateProperty.all(Colors.grey), 
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(HomeScreen.routeName);
                  },
                  child: Text(
                    'Lewati',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Expanded(
                child: DefaultButton(
                  text: "Verifikasi",
                  press: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.pushNamed(
                          context, VerificationWaitScreen.routeName);
                    }
                  },
                ),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
        ],
      ),
    );
  }

  TextFormField buildFormField(String fieldValue, String hintText) {
    return TextFormField(
      onSaved: (newValue) => fieldValue = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: fieldValue + ' ' + kNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
