import 'package:flutter/material.dart';
import 'package:gemastik_tryout/models/User.dart';
import 'package:gemastik_tryout/screens/wrapper.dart';
import 'package:gemastik_tryout/services/auth.dart';
import 'package:provider/provider.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   runApp(MyApp());
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: Wrapper()
    );
  }
}
