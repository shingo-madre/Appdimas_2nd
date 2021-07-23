import 'package:flutter/material.dart';
import 'package:gemastik_tryout/screens/notification/notification_screen.dart';
// import 'package:gemastik_tryout/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          // IconBtnWithCounter(
          //   svgSrc: "assets/icons/Cart Icon.svg",
          //   press: () => Navigator.pushNamed(context, CartScreen.routeName),
          // ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, NotificationScreen.routeName);
            },
            child: Image.asset('assets/icons/notification_dot.png'),
          )
          // IconButton(icon: Icon(Icons.alarm), onPressed: () {})
          // IconBtnWithCounter(
          //   svgSrc: "assets/icons/Bell.svg",
          //   numOfitem: 2,
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}
