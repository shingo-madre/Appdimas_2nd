import 'package:flutter/material.dart';

import '../../models/Product.dart';
import '../../models/Event.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    // final ProductDetailsArguments agrs = ModalRoute.of(context).settings.arguments;
    final EventDetailsArguments agrs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      // appBar: CustomAppBar(rating: agrs.product.rating),
      // body: Body(product: agrs.product),
      body: Body(event: agrs.event),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}

class EventDetailsArguments {
  final Event event;

  EventDetailsArguments({@required this.event});
}
