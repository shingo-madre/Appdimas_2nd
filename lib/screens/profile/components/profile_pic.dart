import 'package:flutter/material.dart';
import 'package:gemastik_tryout/constants.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
    @required this.photoURL
  }) : super(key: key);

  final String photoURL;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: photoURL.isNotEmpty ? NetworkImage(photoURL) : null,
          ),
          Positioned(
            right: -12,
            bottom: 0,
            child: SizedBox(
              height: 40,
              width: 40,
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                ),
                onPressed: () {},
                child: Icon(Icons.edit, color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
