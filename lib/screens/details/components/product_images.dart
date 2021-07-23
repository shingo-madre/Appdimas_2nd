import 'package:flutter/material.dart';
import 'package:gemastik_tryout/models/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(0)),
              child: Stack(
                children: [
                  Hero(
                    tag: widget.product.id.toString(),
                    child: Image.asset(widget.product.images[selectedImage]),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        // height: getProportionateScreenWidth(40),
                        width: getProportionateScreenWidth(40),
                        child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(60.0))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero)),
                          onPressed: () => Navigator.pop(context),
                          child: SvgPicture.asset(
                            "assets/icons/Back ICon.svg",
                            height: 15,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        // padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Row(
                          children: [
                            Text(
                              // "$rating",
                              "lala",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 5),
                            SvgPicture.asset("assets/icons/Star Icon.svg"),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
        // SizedBox(
        //   // width: getProportionateScreenWidth(238),
        //   child: AspectRatio(
        //     aspectRatio: 1,
        //     child: Hero(
        //       tag: widget.product.id.toString(),
        //       child: Image.asset(widget.product.images[selectedImage]),
        //     ),
        //   ),
        // ),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallProductPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
