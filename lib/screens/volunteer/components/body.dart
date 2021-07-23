import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/coustom_bottom_nav_bar.dart';
import 'package:gemastik_tryout/components/sidebar.dart';
import 'package:gemastik_tryout/enums.dart';
import 'package:gemastik_tryout/screens/volunteer/components/main_volunteer.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acara'),
      ),
      drawer: Drawer(
        child: Sidebar(),
      ),
      body: MainVolunteer(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.volunteer),
    );
  }
}
