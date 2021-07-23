import 'package:flutter/material.dart';
import 'package:gemastik_tryout/constants.dart';

import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            child: Stack(
              children: [
                Container(
                  width:  MediaQuery. of(context). size. width,
                  height: 120,
                  color: kPrimaryColor,
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: ProfilePic(),
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
