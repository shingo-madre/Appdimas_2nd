import 'package:flutter/material.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:gemastik_tryout/models/Event.dart';

class ButtonBottomNavbar extends StatelessWidget {
  const ButtonBottomNavbar({
    Key key,
    @required this.event,
  }) : super(key: key);

  final Event event;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor,
                ),
                child: Text('Mulai Acara', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
              onTap: () {
                showAlertDialog(context);
              },
            )
          ],
        )
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Container(
        height: 100,
        child: Column(
          children: [
            Text("Ingin Memulai Acara?"),
            Padding(padding: EdgeInsets.only(top: 40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Text(
                        'Tidak',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ), 
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                        color: Colors.orange,
                      ),
                      child: Text(
                        'Ya',
                        style: TextStyle(
                          color: Colors.white
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}