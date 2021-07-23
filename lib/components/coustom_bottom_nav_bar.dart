import 'package:flutter/material.dart';
import 'package:gemastik_tryout/screens/home/home_screen.dart';
import 'package:gemastik_tryout/screens/profile/profile_screen.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 8,
            blurRadius: 10,
            offset: Offset(0, 5)),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: Icon(Icons.flag,
                  color: MenuState.volunteer == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.chat_rounded,
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, ProfileScreen.routeName),
            ),
          ],
        )
      ),
    );
  }
}
