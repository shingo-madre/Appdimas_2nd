import 'package:flutter/material.dart';
import 'package:gemastik_tryout/components/alert_dialog.dart';
import 'package:gemastik_tryout/constants.dart';
import 'package:gemastik_tryout/models/Event.dart';

class ButtonBottomNavbar extends StatelessWidget {
  const ButtonBottomNavbar({
    Key key,
    @required this.event,
    @required this.buttonText,
    @required this.alertMessage,
    @required this.press,
  }) : super(key: key);

  final Event event;
  final String buttonText;
  final String alertMessage;
  final Function press;

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
                child: Text(buttonText, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ShowAlertDialog(
                      context: context, 
                      alertMessage: alertMessage,
                      press: press,
                    );
                  },
                );
              },
            )
          ],
        )
      ),
    );
  }
}