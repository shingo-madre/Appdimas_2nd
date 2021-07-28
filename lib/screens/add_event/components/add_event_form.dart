import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/default_button.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:gemastik_tryout/screens/volunteer/volunteer_screen.dart';
import 'package:gemastik_tryout/size_config.dart';
import 'package:image_picker/image_picker.dart';

class AddEventForm extends StatefulWidget {
  @override
  _AddEventFormState createState() => _AddEventFormState();
}

class _AddEventFormState extends State<AddEventForm> {
  final _formKey = GlobalKey<FormState>();
  File _lampiran;
  bool date1Filled = false;
  bool date2Filled = false;
  int _countTask = 0;
  int _countRequirement = 0;

  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  final TextEditingController purposeController = TextEditingController();
  final TextEditingController taskController = TextEditingController();
  final TextEditingController requirementController = TextEditingController();

  Future<void> _pickImage(ImageSource source) async {
    File selected = await ImagePicker.pickImage(source: source);

    setState(() {
      _lampiran = selected;
    });
  }

  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();

  Future<void> _selectDate(BuildContext context, whichDate) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1945, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate1 && whichDate == '1') {
      setState(() {
        selectedDate1 = picked;
        date1Filled = true;
      });
    } else {
      setState(() {
        selectedDate2 = picked;
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
          buildFormField('event_name', 'Masukkan Nama Acara',TextInputType.text),
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
                  child: _lampiran != null
                      ? Image.file(_lampiran)
                      : Icon(
                          Icons.add_circle_outline_outlined, color: kPrimaryColor, size: 30,
                        ),
                )),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Deskripsi'),
          buildFormField('description','Masukkan Deskripsi Acara',TextInputType.text),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Lokasi'),
          buildFormField('locations','Masukkan Lokasi Acara',TextInputType.text),
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
          buildFormField(
              'purpose',
              'Tujuan Acara',
              TextInputType.text),
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
                  press: () {
                    Navigator.pushNamed(context, VolunteerScreen.routeName);
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
        if (value.isNotEmpty) {
          // removeError(error: kNullError);
        }
        return null;
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
          if (value.isNotEmpty) {
            // removeError(error: kNullError);
          }
          return null;
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