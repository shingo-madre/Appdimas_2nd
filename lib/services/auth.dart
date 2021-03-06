import 'package:firebase_auth/firebase_auth.dart';
import 'package:gemastik_tryout/models/User.dart';
import 'package:gemastik_tryout/services/database.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String errorMessage;
  //buat user objek dari firebase user
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }
  //ubah user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
      .map(_userFromFirebaseUser);
  }
  // sign in anon
  Future signInAnon() async {
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }
  // sign in pake email & password
  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  // register pake email & password
  Future registerWithEmailAndPassword(String email, String password, String username) async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;

      //buat document 
      await DatabaseService(uid: user.uid).updateUserData(username);
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //get user
  Future getUser() async {
    var firebaseUser = await FirebaseAuth.instance.currentUser();
    return firebaseUser;
  }

  //add event
  Future addEvent(String eventName, String eventDescription, String eventPurpose) async{
    try{
      //buat document 
      var user = await FirebaseAuth.instance.currentUser();
      await DatabaseService(uid: user.uid).addEvent(eventName, eventDescription, eventPurpose);
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}