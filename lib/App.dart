import 'package:flutter/material.dart';
import 'package:pro_health/ui/pages/Dashboard.dart';
import 'package:pro_health/ui/pages/LoginPage.dart';
import 'package:pro_health/ui/pages/OtpScreen.dart';
import 'package:pro_health/ui/pages/Screens.dart';
import 'package:pro_health/ui/pages/Screens1.dart';
import 'package:pro_health/ui/utilities/Constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Screens.tag: (context) => Screens(),
    Screens1.tag: (context) => Screens1(),
    LoginPage.tag: (context) => LoginPage(),
    OtpScreen.tag: (context) => OtpScreen(mobileno: '',),
    Dashboard.tag: (context) => Dashboard(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pro Health',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: kBaseColor,
        fontFamily: 'Poppins-Regular',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}