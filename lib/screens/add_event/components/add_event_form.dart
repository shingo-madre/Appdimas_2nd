import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/default_button.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:gemastik_tryout/screens/volunteer/volunteer_screen.dart';
import 'package:gemastik_tryout/services/auth.dart';
import 'package:gemastik_tryout/size_config.dart';
import 'package:image_picker/image_picker.dart';

class AddEventForm extends StatefulWidget {
  @override
  _AddEventFormState createState() => _AddEventFormState();
}

class _AddEventFormState extends State<AddEventForm> {
  final _formKey = GlobalKey<FormState>();
  bool date1Filled = false;
  bool date2Filled = false;
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  int _countTask = 0;
  int _countRequirement = 0;
  String eventName; 
  File eventPhoto;
  String eventDescription; 
  String eventLocation; 
  DateTime eventStartDate; 
  DateTime eventEndDate; 
  String eventPurpose; 
  String eventTask; 
  String eventRequirement;
  final AuthService _auth = AuthService();

  Future<void> _pickImage(ImageSource source) async {
    File selected = await ImagePicker.pickImage(source: source);

    setState(() {
      // _lampiran = selected;
      eventPhoto = selected;
    });
  }

  Future<void> _selectDate(BuildContext context, whichDate) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1945, 8),
      lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate1 && whichDate == '1') {
      setState(() {
        selectedDate1 = picked;
        eventStartDate = picked;
        date1Filled = true;
      });
    } else {
      setState(() {
        selectedDate2 = picked;
        eventEndDate = picked;
        date2Filled = true;
      });
    }
  }

  void addNewForm(String whichForm) {
    setState(() {
      if(whichForm == 'task') {
        _countTask = _countTask + 1;
      }
      
      if(whichForm == 'requirement') {
        _countRequirement = _countRequirement + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> addFormTask = List.generate(_countTask, (int i) => NewFormField());
    List<Widget> addFormRequirement = List.generate(_countRequirement, (int i) => NewFormField());
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Isi Nama Acara'),
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => eventName = newValue,
            onChanged: (value) {
              setState(() {
                eventName = value;
              });
            },
            validator: (value) {
              if (value.isEmpty) {
                // addError(error: fieldValue + ' ' + kNullError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Masukkan Nama Acara',
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          // buildFormField(eventName, 'Masukkan Nama Acara',TextInputType.text),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Foto atau Poster'),
          InkWell(
            onTap: () {
              _pickImage(ImageSource.gallery);
            },
            child: Container(
              height: 200.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffE5E5E5),
                ),
                child: Center(
                  child: eventPhoto != null
                      ? Image.file(eventPhoto)
                      : Icon(
                          Icons.add_circle_outline_outlined, color: kPrimaryColor, size: 30,
                        ),
                )),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Deskripsi'),
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => eventDescription = newValue,
            onChanged: (value) {
              setState(() {
                eventDescription = value;
              });
            },
            validator: (value) {
              if (value.isEmpty) {
                // addError(error: fieldValue + ' ' + kNullError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Masukkan Nama Acara',
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          // buildFormField(eventDescription,'Masukkan Deskripsi Acara',TextInputType.text),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Lokasi'),
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => eventLocation = newValue,
            onChanged: (value) {
              setState(() {
                eventLocation = value;
              });
            },
            validator: (value) {
              if (value.isEmpty) {
                // addError(error: fieldValue + ' ' + kNullError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Masukkan Nama Acara',
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          // buildFormField(eventLocation,'Masukkan Lokasi Acara',TextInputType.text),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Durasi'),
          Row(
            children: <Widget>[
              Expanded(
                  child: buildDateFormField('event_start_date', '1')),
              Text(' - ', style: TextStyle(color: Colors.grey, fontSize: 30),),
              Expanded(
                  child: buildDateFormField(
                      'event_end_date', '2')),
            ],
          ),
          SizedBox(
              height: getProportionateScreenHeight(10)),
          formFieldTitle('Tujuan'),
          TextFormField(
            keyboardType: TextInputType.text,
            onSaved: (newValue) => eventPurpose = newValue,
            onChanged: (value) {
              setState(() {
                eventPurpose = value;
              });
            },
            validator: (value) {
              if (value.isEmpty) {
                // addError(error: fieldValue + ' ' + kNullError);
                return "";
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Masukkan Nama Acara',
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          // buildFormField(eventPurpose,'Tujuan Acara',TextInputType.text),
          // FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Tugas'),
          Column(
            children: addFormTask,
          ),
          InkWell(
            onTap: () {
              addNewForm('task');
            },
            child: Icon(Icons.add_circle_outline_outlined, color: Colors.grey,),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Syarat'),
          Column(
            children: addFormRequirement,
          ),
          InkWell(
            onTap: () {
              addNewForm('requirement');
            },
            child: Icon(Icons.add_circle_outline_outlined, color: Colors.grey,),
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          Row(
            children: [
              Expanded(
                child: DefaultButton(
                  text: "Unggah Acara",
                  press: () async {
                    dynamic result = await _auth.addEvent(eventName, eventDescription,eventPurpose);
                    if(result == null) {
                      print('error');
                    } else {
                      Navigator.of(context).pushNamed(VolunteerScreen.routeName);
                    }
                    // Navigator.pushNamed(context, VolunteerScreen.routeName);
                    // if (_formKey.currentState
                    //     .validate()) {
                    // }
                  },
                ),
              )
            ],
          ),
          SizedBox(
              height: getProportionateScreenHeight(40)),
        ],
      ),
    );
  }

  Text formFieldTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
    );
  }

  TextFormField buildFormField(String fieldValue, String hintText, TextInputType inputType) {
    return TextFormField(
      keyboardType: inputType,
      onSaved: (newValue) => fieldValue = newValue,
      onChanged: (value) {
        setState(() {
          fieldValue = value;
        });
        // if (value.isNotEmpty) {
        //   // removeError(error: kNullError);
        // }
        // return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          // addError(error: fieldValue + ' ' + kNullError);
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

  ElevatedButton buildDateFormField(String fieldValue, String whichDate) {
    return ElevatedButton(
      child: Text(
        whichDate == '1' ? 
          date1Filled == false ? 'HH/BB/TT' : "${selectedDate1.toLocal()}".split(' ')[0] 
          : date2Filled == false ? 'HH/BB/TT' : "${selectedDate2.toLocal()}".split(' ')[0],
        style: TextStyle(color: Color(0xff686868)),
      ),
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: kPrimaryColor))),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          textStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          )),
      onPressed: () => _selectDate(context, whichDate),
    );
  }
}

class NewFormField extends StatefulWidget {
  @override
  _NewFormFieldState createState() => _NewFormFieldState();
}

class _NewFormFieldState extends State<NewFormField> {
  String fieldValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
        child: TextFormField(
        keyboardType: TextInputType.text,
        onSaved: (newValue) => fieldValue = newValue,
        onChanged: (value) {

          // if (value.isNotEmpty) {
          //   // removeError(error: kNullError);
          // }
          // return null;
        },
        validator: (value) {
          if (value.isEmpty) {
            // addError(error: fieldValue + ' ' + kNullError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: "Masukkan Data",
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}