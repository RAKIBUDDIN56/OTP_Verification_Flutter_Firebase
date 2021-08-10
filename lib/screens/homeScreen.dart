import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:otp_verification_flutter_firebase/screens/constants.dart';

class HomeScreen extends StatefulWidget {
  static const String idScreen = 'Home';
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
          child: IconButton(
        icon: Icon(Icons.logout),
        onPressed: () async {
          User currentUser = FirebaseAuth.instance.currentUser;
          await FirebaseAuth.instance.signOut();
          print('UId');
          print(currentUser.uid);
          print(FirebaseAuth.instance.currentUser);
        },
      )),
    );
  }
}
