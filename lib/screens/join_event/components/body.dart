import 'package:flutter/material.dart';
import 'package:gemastik_tryout/screens/join_event/components/join_even_form.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                JoinEventForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
