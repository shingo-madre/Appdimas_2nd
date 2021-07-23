import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/default_button.dart';
import 'package:gemastik_tryout/screens/join_event/components/verification_join_event.dart';
import 'package:gemastik_tryout/screens/verification_wait/verification_wait_screen.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class JoinEventForm extends StatefulWidget {
  @override
  _JoinEventFormState createState() => _JoinEventFormState();
}

class _JoinEventFormState extends State<JoinEventForm> {
  File _lampiran;
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  Future<void> _pickImage(ImageSource source) async {
    File selected = await ImagePicker.pickImage(source: source);

    setState(() {
      _lampiran = selected;
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
          Text('Lampiran', style: TextStyle(fontSize: 20, color: Colors.black),),
          SizedBox(height: getProportionateScreenHeight(10)),
          InkWell(
            onTap: () {
              _pickImage(ImageSource.gallery);
            },
            child: Container(
              height: 250.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffE5E5E5),
                ),
                child: Center(
                  child: _lampiran != null
                      ? Image.file(_lampiran)
                      : Icon(
                          Icons.add
                        ),
                )),
            ),
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
                      "Pilih File",
                      style: TextStyle(color: Colors.orange, fontSize: 18),
                    ),
                  )),
            ),
            onTap: () {
              _pickImage(ImageSource.gallery);
            },
          ),
          SizedBox(height: getProportionateScreenHeight(100)),
          Row(
            children: [
              Expanded(
                child: DefaultButton(
                  text: "Unggah",
                  press: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => VerificationJoinEvent()));
                    }
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
