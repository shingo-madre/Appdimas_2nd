import 'package:flutter/widgets.dart';
import 'package:gemastik_tryout/screens/cart/cart_screen.dart';
import 'package:gemastik_tryout/screens/complete_profile/complete_profile_screen.dart';
import 'package:gemastik_tryout/screens/details/details_screen.dart';
import 'package:gemastik_tryout/screens/forgot_password/forgot_password_screen.dart';
import 'package:gemastik_tryout/screens/home/home_screen.dart';
import 'package:gemastik_tryout/screens/login_success/login_success_screen.dart';
import 'package:gemastik_tryout/screens/otp/otp_screen.dart';
import 'package:gemastik_tryout/screens/profile/profile_screen.dart';
import 'package:gemastik_tryout/screens/sign_in/sign_in_screen.dart';
import 'package:gemastik_tryout/screens/splash/splash_screen.dart';
import 'package:gemastik_tryout/screens/sign_up/sign_up_screen.dart';
import 'package:gemastik_tryout/screens/verification_ktp/verification_ktp_screen.dart';
import 'package:gemastik_tryout/screens/verification_wait/verification_wait_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  VerificationKtpScreen.routeName: (context) => VerificationKtpScreen(),
  VerificationWaitScreen.routeName: (context) => VerificationWaitScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
