// import 'package:GRSON/anothor/main.dart';

import 'package:flutter/material.dart';
// import 'dart:async';
// screens
// import 'package:GRSON/screens/onboarding.dart';
// import 'package:GRSON/screens/pro.dart';
import 'package:GRSON/secondpages/screens/home.dart';
import 'package:GRSON/secondpages/screens/profile.dart';
import 'package:GRSON/secondpages/screens/register.dart';
import 'package:GRSON/secondpages/screens/articles.dart';
import 'package:GRSON/secondpages/screens/elements.dart';
import 'package:GRSON/welcomePages/Welcome/welcome_screen.dart';
import 'package:GRSON/welcomePages/constants.dart';
// import 'package:food_delivery_app/lib/home_page.dart';
// import 'package:GRSON/details_page.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GRSON 3',
        theme: ThemeData(
          fontFamily: 'OpenSans', 
          primaryColor: kPrimaryColor, 
          scaffoldBackgroundColor: Colors.white
           ) ,
          
        
        initialRoute: "/onboarding",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          // "/onboarding": (BuildContext context) => new Onboarding(),
          "/onboarding": (BuildContext context) => new WelcomeScreen(),
          "/home": (BuildContext context) => new Home(),
          "/profile": (BuildContext context) => new Profile(),
          "/articles": (BuildContext context) => new Articles(),
          "/elements": (BuildContext context) => new Elements(),
          "/account": (BuildContext context) => new Register(),
          // "/homepage": (BuildContext context) => new WelcomeScreen(),
        });
  }
}
