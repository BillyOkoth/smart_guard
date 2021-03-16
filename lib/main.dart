import 'package:flutter/material.dart';
import 'package:smart_guard/Screens/Dashboard/components/bottom_nav_screen.dart';
import 'package:smart_guard/Screens/Dashboard/dashboard.dart';
import 'package:smart_guard/Screens/Login/login_screen.dart';
import 'package:smart_guard/constants.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Guard',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Montserrat'
      ),
      home: LoginScreen(),
    );
  }
}