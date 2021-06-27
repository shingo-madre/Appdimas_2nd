import 'package:flutter/material.dart';
import 'package:gemastik_tryout/Homepage.dart';
import 'package:gemastik_tryout/chat/MainChat.dart';
import 'package:gemastik_tryout/volunteer/MainVolunteer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPage = 0;
  String _title;
  
  final _layoutPage = [
    HomePage(),
    MainVolunteer(),
    MainChat()
  ];

  @override
  void initState(){
    super.initState();
    _title = 'Home';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Dafa Raisya'),
                accountEmail: Text('dafaraisya.dr@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: Text('D'),
                  backgroundColor: Colors.white,
                ),
              ),
              ListTile(
                title: Text('Profil'),
                leading: Icon(Icons.person_outline_sharp),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MainVolunteer();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
      body: _layoutPage.elementAt(_selectedPage),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
              child: Icon(Icons.home),
            ),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
              child: Icon(Icons.flag),
            ),
            label: 'Volunteer'
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
              child: Icon(Icons.chat_outlined),
            ),
            label: 'Chat'
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        onTap: _onTapPage,
        selectedItemColor: Colors.deepOrange,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.0,
      ),
    );
  }
  void _onTapPage(int index) {
     setState(() {
     _selectedPage = index;
      switch(index) { 
       case 0: { _title = 'Home'; }
       break; 
       case 1: { _title = 'Volunteer'; } 
       break;
       case 2: { _title = 'Chat'; } 
       break;
      } 
     });
   }
}