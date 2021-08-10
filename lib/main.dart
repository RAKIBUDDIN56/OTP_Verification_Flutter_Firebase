import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:otp_verification_flutter_firebase/screens/homeScreen.dart';
import 'package:otp_verification_flutter_firebase/screens/otp_screen.dart';
import 'package:otp_verification_flutter_firebase/screens/signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String firstScreen = FirebaseAuth.instance.currentUser == null
      ? LoginScreenWithPhone.idScreen
      : HomeScreen.idScreen;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: firstScreen,
      routes: {
        LoginScreenWithPhone.idScreen: (context) => LoginScreenWithPhone(),
        HomeScreen.idScreen: (context) => HomeScreen(),
        '/otpScreen': (contex) => OtpScreen()
      },
    );
  }
}
