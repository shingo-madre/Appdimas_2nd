import 'package:flutter/material.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:gemastik_tryout/screens/profile/profile_screen.dart';
import 'package:gemastik_tryout/screens/sign_in/sign_in_screen.dart';
import 'package:gemastik_tryout/size_config.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: kPrimaryColor,
          ),
          accountName: Text(
            'Zaire Levin',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          accountEmail: Text('zaire.levin@gmail.com'),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset("assets/images/profile_image_1.png",),
          ),
        ),
        ListTile(
          title: Text('Profil', style: TextStyle(color: kSecondaryColor)),
          leading: Icon(Icons.people_alt_outlined),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, ProfileScreen.routeName);
          },
        ),
        ListTile(
          title: Text('Disimpan', style: TextStyle(color: kSecondaryColor),),
          leading: Icon(Icons.bookmark_border_outlined),
          onTap: () {
          },
        ),
        ListTile(
          title: Text('Pengaturan', style: TextStyle(color: kSecondaryColor)),
          leading: Icon(Icons.settings),
          onTap: () {
            Navigator.of(context).pop();
          }
        ),
        ListTile(
          title: Text('Informasi', style: TextStyle(color: kSecondaryColor)),
          leading: Icon(Icons.info_outline),
          onTap: () {
            Navigator.of(context).pop();
          }
        ),
        SizedBox(height: getProportionateScreenHeight(220)),
        Divider(
          height: 10,
          thickness: 2,
        ),
        ListTile(
          leading: Icon(Icons.keyboard_arrow_left_sharp),
          title: Text('Keluar', style: TextStyle(color: kSecondaryColor,)),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(SignInScreen.routeName);
          }
        ),
      ],
    );
  }
}
