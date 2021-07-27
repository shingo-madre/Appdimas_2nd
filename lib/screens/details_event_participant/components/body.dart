import 'package:flutter/material.dart';
import 'package:gemastik_tryout/models/Event.dart';
import 'package:gemastik_tryout/screens/details/components/event_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  final Event event;

  const Body({Key key, @required this.event}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _checked1 = false;
  bool _checked2 = false;
  bool _checked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          EventImages(event: widget.event),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 22),
            leading: Icon(Icons.people_alt_outlined),
            title: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                SizedBox(width: 5,),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(20)
                  ),
                )
              ],
            )
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: SvgPicture.asset(
                    "assets/icons/Tag.svg",
                    height: 20,
                    width: 20,
                  ),
                  title: Text(
                    'Menjaga Stan Vaksinasi',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Progress',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQueryData().size.width,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                      color: _checked1==true ? Colors.green[400] : Colors.grey[300] 
                    ),
                  )
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: _checked2==true ? Colors.green[600] : Colors.grey[300] 
                    ),
                  )
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                      color: _checked3==true ? Colors.green[800] : Colors.grey[300] 
                    ),
                  )
                )
              ],
            ),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: _checked1,
            title: Text('Mencatat kondisi kesehatan'),
            onChanged: (bool value) {
              setState(() {
                _checked1 = value;
              });
            },
            activeColor: Colors.green,
            checkColor: Colors.white,
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: _checked2,
            title: Text('Mengecek tekanan darah'),
            onChanged: (bool value) {
              setState(() {
                _checked2 = value;
              });
            },
            activeColor: Colors.green,
            checkColor: Colors.white,
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: _checked3,
            title: Text('Mengatur barisan'),
            onChanged: (bool value) {
              setState(() {
                _checked3 = value;
              });
            },
            activeColor: Colors.green,
            checkColor: Colors.white,
          )
        ],
      ),
    );
  }
}
