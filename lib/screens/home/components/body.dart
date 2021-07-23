import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/coustom_bottom_nav_bar.dart';
import 'package:gemastik_tryout/components/sidebar.dart';
import 'package:gemastik_tryout/enums.dart';
import 'package:gemastik_tryout/screens/home/components/list_event.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

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
      body: ListEvent(),
      // body: SafeArea(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         ListEvent(),
      //         // DiscountBanner(),
      //         // Categories(),
      //         // SpecialOffers(),
      //         // SizedBox(height: getProportionateScreenWidth(30)),
      //         PopularProducts(),
      //         SizedBox(height: getProportionateScreenWidth(30)),
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
