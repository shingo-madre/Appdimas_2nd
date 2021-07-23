import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/default_button.dart';
import 'package:gemastik_tryout/components/form_error.dart';
import 'package:gemastik_tryout/screens/verification_ktp/verification_ktp_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  String dropdownValue = 'Relawan';
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String status;
  String nik;
  String province;
  String city;
  String completeAddress;
  String bornDate;
  String age;
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

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

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1945, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          formFieldTitle('Status'),
          buildStatusFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('NIK'),
          buildFormField('nik', 'Masukkan NIK Anda', TextInputType.number),
          SizedBox(height: getProportionateScreenHeight(10)),
          Row(
            children: [
              formFieldTitle('Provinsi'),
              Padding(padding: EdgeInsets.only(right: 140)),
              formFieldTitle('Kota'),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: buildFormField('Provinsi', 'Provinsi', TextInputType.text)),
              Padding(padding: EdgeInsets.only(right: 10)),
              Expanded(child: buildFormField('Kota', 'Kota', TextInputType.text)),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Alamat Lengkap'),
          buildFormField('address', 'Masukkan Alamat Lengkap Anda', TextInputType.streetAddress),
          SizedBox(height: getProportionateScreenHeight(10)),
          Row(
            children: [
              formFieldTitle('Tanggal Lahir'),
              Padding(padding: EdgeInsets.only(right: 140)),
              formFieldTitle('Umur'),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: buildBornFormField('bornDate', 'Tanggal Lahir')),
              Padding(padding: EdgeInsets.only(right: 10)),
              Expanded(child: buildFormField('age', 'Umur', TextInputType.number)),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(10)),
          formFieldTitle('Nomor telepon'),
          buildFormField('number', 'Masukkan Nomor telepon Anda',TextInputType.phone),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          Row(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(56),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                  ),
                  onPressed: () {},
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
                  text: "Verifikasi KTP",
                  press: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.pushNamed(
                          context, VerificationKtpScreen.routeName);
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

  Text formFieldTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
    );
  }

  TextFormField buildFormField(String fieldValue, String hintText, TextInputType inputType) {
    return TextFormField(
      keyboardType: inputType,
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

  ElevatedButton buildBornFormField(String fieldValue, String hintText) {
    return ElevatedButton(
      child: Text("${selectedDate.toLocal()}".split(' ')[0], style: TextStyle(color: Color(0xff686868)),),
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: kPrimaryColor)
            )
          ),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
        )
      ),
      onPressed: () => _selectDate(context),
    );
  }

  DropdownButtonFormField buildStatusFormField() {
    return DropdownButtonFormField<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_outlined),
      iconSize: 24,
      onChanged: (value) {
        setState(() {
          dropdownValue = value;
        });
        if (value.isNotEmpty) {
          removeError(error: kStatusNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      items: <String>[
        'Relawan',
        'Organisasi',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
