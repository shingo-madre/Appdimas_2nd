import 'package:flutter/widgets.dart';
import 'package:gemastik_tryout/screens/complete_profile/complete_profile_screen.dart';
import 'package:gemastik_tryout/screens/details/details_screen.dart';
import 'package:gemastik_tryout/screens/forgot_password/forgot_password_screen.dart';
import 'package:gemastik_tryout/screens/home/home_screen.dart';
import 'package:gemastik_tryout/screens/profile/profile_screen.dart';
import 'package:gemastik_tryout/screens/sign_in/sign_in_screen.dart';
import 'package:gemastik_tryout/screens/splash/splash_screen.dart';
import 'package:gemastik_tryout/screens/sign_up/sign_up_screen.dart';
import 'package:gemastik_tryout/screens/verification_ktp/verification_ktp_screen.dart';
import 'package:gemastik_tryout/screens/verification_wait/verification_wait_screen.dart';
import 'package:gemastik_tryout/screens/join_event/join_event_screen.dart';
import 'package:gemastik_tryout/screens/notification/notification_screen.dart';
import 'package:gemastik_tryout/screens/volunteer/volunteer_screen.dart';
import 'package:gemastik_tryout/screens/chats/chats_screen.dart';
import 'package:gemastik_tryout/screens/messages/message_screen.dart';
import 'package:gemastik_tryout/screens/add_event/add_event_screen.dart';
import 'package:gemastik_tryout/screens/details_event_admin/DetailsEventAdminScreen.dart';
import 'package:gemastik_tryout/screens/details_event_participant/DetailsEventParticipantScreen.dart';
import 'package:gemastik_tryout/screens/accept_participant/accept_participant_screen.dart';
import 'package:gemastik_tryout/screens/edit_event/edit_event_screen.dart';
import 'package:gemastik_tryout/screens/information/information_screen.dart';
import 'package:gemastik_tryout/screens/settings/setting_screen.dart';
import 'package:gemastik_tryout/screens/certificate/certificate_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  VerificationKtpScreen.routeName: (context) => VerificationKtpScreen(),
  VerificationWaitScreen.routeName: (context) => VerificationWaitScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  JoinEventScreen.routeName: (context) => JoinEventScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  VolunteerScreen.routeName: (context) => VolunteerScreen(),
  ChatsScreen.routeName: (context) => ChatsScreen(),
  MessagesScreen.routeName: (context) => MessagesScreen(),
  AddEventScreen.routeName: (context) => AddEventScreen(),
  DetailsEventAdminScreen.routeName: (context) => DetailsEventAdminScreen(),
  DetailsEventParticipantScreen.routeName: (context) => DetailsEventParticipantScreen(),
  AcceptParticipantScreen.routeName: (context) => AcceptParticipantScreen(),
  EditEventScreen.routeName: (context) => EditEventScreen(),
  InformationScreen.routeName: (context) => InformationScreen(),
  SettingScreen.routeName: (context) => SettingScreen(),
  CertificateScreen.routeName: (context) => CertificateScreen(),
};
