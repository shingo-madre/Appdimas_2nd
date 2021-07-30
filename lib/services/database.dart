import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference userCollection = Firestore.instance.collection('users');
  final CollectionReference eventCollection = Firestore.instance.collection('events');

  Future updateUserData(String username) async {
    return await userCollection.document(uid).setData({
      'username': username
    });
  }

  Future addEvent(String eventName, String eventDescription, String eventPurpose) async {
    return await eventCollection.document(uid).setData({
      'eventName' : eventName,
      'eventDescription' : eventDescription,
      'eventPurpose' : eventPurpose
    });
  } 

  Future createEvent(
    String eventName, 
    String eventDescription, 
    String eventLocation, 
    String eventStartDate, 
    String eventEndDate, 
    String eventPurpose, 
    String eventTask, 
    String eventRequirement
  ) async {
    return await eventCollection.document(uid).setData({
      'eventName': eventName,
      'eventDescription' : eventDescription,
      'eventLocation' : eventLocation,
      'eventStartDate' : eventStartDate,
      'eventEndDate' : eventEndDate,
      'eventPurpose' : eventPurpose,
      'eventTask' : eventTask,
      'eventRequirement' : eventRequirement
    });
  }

  Stream<QuerySnapshot> get users {
    return userCollection.snapshots();
  }
}