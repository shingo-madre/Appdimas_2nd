import 'package:flutter/material.dart';

class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({
    Key key,
    @required this.context,
    @required this.alertMessage,
  }) : super(key: key);

  final BuildContext context;
  final String alertMessage;

  @override
  Widget build(context) {
    return AlertDialog(
      backgroundColor: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Container(
        height: 100,
        child: Column(
          children: [
            Text(alertMessage),
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
  }
}