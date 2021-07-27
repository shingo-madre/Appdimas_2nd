import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/coustom_bottom_nav_bar.dart';
import 'package:gemastik_tryout/components/sidebar.dart';
import 'package:gemastik_tryout/enums.dart';
import 'package:gemastik_tryout/screens/home/components/main_list_event.dart';

import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeHeader(),
      ),
      drawer: Drawer(
        child: Sidebar(),
      ),
      body: MainListEvent(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
