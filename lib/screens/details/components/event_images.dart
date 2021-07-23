import 'package:flutter/material.dart';
import 'package:gemastik_tryout/models/Event.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class EventImages extends StatefulWidget {
  const EventImages({
    Key key,
    @required this.event,
  }) : super(key: key);

  final Event event;

  @override
  _EventImagesState createState() => _EventImagesState();
}

class _EventImagesState extends State<EventImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(0)),
            child: Stack(
              children: [
                Hero(
                  tag: widget.event.id.toString(),
                  child: Image.asset(widget.event.images[selectedImage]),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: getProportionateScreenWidth(70),
                      width: getProportionateScreenWidth(50),
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: SvgPicture.asset(
                          "assets/icons/Back Icon.svg",
                          height: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: 20,top: 30),
                      child: Column(
                        children: [
                          Image.asset('assets/icons/share_outline.png'),
                          SizedBox(height: 15,),
                          Image.asset('assets/icons/bookmarks.png'),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter, // 10% of the width, so there are ten blinds.
                        colors: <Color>[
                          Colors.orange.withOpacity(0.35),
                          Colors.transparent,
                        ], // red to yellow
                        tileMode: TileMode.repeated,
                      )
                    ),
                  ),
                ),
                Positioned(
                  bottom: 75,
                  left: 15,
                  child: Container(
                    width: 120,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, top: 1),
                      child: Text(
                        "Terakhir "+widget.event.jadwal,
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    )
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 15,
                  child: Text(
                    widget.event.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800
                    ),
                  )
                ),
                Positioned(
                  bottom: 20,
                  left: 15,
                  child: Text(
                    'Kesehatan',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ),
              ],
            )
          ),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ...List.generate(widget.event.images.length,
        //         (index) => buildSmallProductPreview(index)),
        //   ],
        // )
      ],
    );
  }

  // GestureDetector buildSmallProductPreview(int index) {
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         selectedImage = index;
  //       });
  //     },
  //     child: AnimatedContainer(
  //       duration: defaultDuration,
  //       margin: EdgeInsets.only(right: 15),
  //       padding: EdgeInsets.all(8),
  //       height: getProportionateScreenWidth(48),
  //       width: getProportionateScreenWidth(48),
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(10),
  //         border: Border.all(
  //             color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
  //       ),
  //       child: Image.asset(widget.event.images[index]),
  //     ),
  //   );
  // }
}
