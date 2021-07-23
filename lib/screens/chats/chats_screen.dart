import 'package:gemastik_tryout/components/coustom_bottom_nav_bar.dart';
import 'package:gemastik_tryout/components/sidebar.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';
import 'components/body.dart';

class ChatsScreen extends StatefulWidget {
  static String routeName = "/chats";
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  // int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesan'),
      ),
      drawer: Drawer(
        child: Sidebar(),
      ),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.chat),
    );
  }
}
