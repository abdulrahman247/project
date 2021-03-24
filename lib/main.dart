import 'package:GRSON/secondPages/restaurant_screens/My_Restaurant/Restaurant_Pages/Take_Away/TakeAwayAccepet.dart';
import 'package:GRSON/secondPages/restaurant_screens/restaurant.dart';
import 'package:GRSON/welcomePages/Signin/components/forgot_password.dart';
import 'package:GRSON/welcomePages/Signin/components/password_validation.dart';
import 'package:GRSON/welcomePages/Signin/login_screen.dart';
import 'package:GRSON/welcomePages/Signup/components/email_validation.dart';
import 'package:GRSON/welcomePages/Signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:GRSON/secondpages/screens/home.dart';
import 'package:GRSON/secondpages/screens/profile.dart';
import 'package:GRSON/secondpages/screens/register.dart';
import 'package:GRSON/secondpages/screens/articles.dart';
import 'package:GRSON/secondpages/screens/elements.dart';
import 'package:GRSON/welcomePages/Welcome/welcome_screen.dart';
import 'package:GRSON/welcomePages/constants.dart';

import 'secondPages/restaurant_screens/My_Restaurant/Restaurant_Pages/Queue/queueAdd.dart';
import 'secondPages/restaurant_screens/My_Restaurant/Restaurant_Pages/Queue/queueAccepet.dart';

import 'secondPages/restaurant_screens/My_Restaurant/Restaurant_Pages/Queue/queueEdit.dart';
import 'secondPages/restaurant_screens/My_Restaurant/Restaurant_Pages/Take_Away/AddItem.dart';
import 'secondPages/restaurant_screens/My_Restaurant/Restaurant_Pages/myRestaurant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GRSON',
        theme: ThemeData(
            fontFamily: 'OpenSans',
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: "WelcomePage",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          //SecondPages
          "/home": (BuildContext context) => new Home(),
          "Restaurant": (BuildContext context) => new Restaurant(),
          "Restaurant page": (BuildContext context) => new RestaurantPage(),
          "Queue add": (BuildContext context) => new QueueAdd(),
          "Queue edit": (BuildContext context) => new QueueEdit(),
          "Queue acc": (BuildContext context) => new QueueAccepet(),
          "Add item": (BuildContext context) => new AddItem(),
          "/profile": (BuildContext context) => new Profile(),
          "/articles": (BuildContext context) => new Articles(),
          "/elements": (BuildContext context) => new Elements(),
          "/account": (BuildContext context) => new Register(),

          //WelcomePages
          "WelcomePage": (BuildContext context) => new WelcomeScreen(),
          "Sign Up": (BuildContext context) => new SignUpScreen(),
          'Sign In': (BuildContext context) => new LoginScreen(),
          'Forgot Password': (BuildContext context) => new ForgotPassword(),
          'validation': (BuildContext context) => new VerifyEmail(),
          'passValidation': (BuildContext context) =>
              new VerifyEmailForPassword(),
        });
  }
}
