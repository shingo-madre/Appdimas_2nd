import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:gemastik_tryout/provider/google_sign_in.dart';
import 'package:gemastik_tryout/screens/information/information_screen.dart';
import 'package:gemastik_tryout/screens/profile/profile_screen.dart';
import 'package:gemastik_tryout/screens/settings/setting_screen.dart';
import 'package:gemastik_tryout/screens/sign_in/sign_in_screen.dart';
import 'package:gemastik_tryout/services/auth.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthService _auth =  AuthService();
    final user = FirebaseAuth.instance.currentUser;
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: kPrimaryColor,
          ),
          accountName: Text(
            'alla',
            // user.displayName,
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          accountEmail: Text(
            'alalal'
            // user.email
          ),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            // backgroundImage: NetworkImage(user.photoURL),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
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
                  Navigator.of(context).pushNamed(SettingScreen.routeName);
                }
              ),
              ListTile(
                title: Text('Informasi', style: TextStyle(color: kSecondaryColor)),
                leading: Icon(Icons.info_outline),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed(InformationScreen.routeName);
                }
              ),
            ],
          ),
        ),
        Divider(
          height: 10,
          thickness: 2,
        ),
        ListTile(
          leading: Icon(Icons.keyboard_arrow_left_sharp),
          title: Text('Keluar', style: TextStyle(color: kSecondaryColor,)),
          onTap: () async {
            // final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
            // provider.logout();
            await _auth.signOut();
            Navigator.of(context).pushNamed(SignInScreen.routeName);
          }
        ),
      ],
    );
  }
}
