import 'package:flutter/material.dart';
import 'package:gemastik_tryout/screens/edit_event/components/edit_event_form.dart';
import 'package:gemastik_tryout/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                EditEventForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
