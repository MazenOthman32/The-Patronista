import 'package:flutter/material.dart';
import 'package:patronist/pattern_size/basic_skirt.dart';
import 'package:patronist/pattern_size/basic_sleeve.dart';
import 'package:patronist/pattern_size/basic_trouser.dart';
import 'package:patronist/pattern_size/basic_blouse.dart';
import 'package:patronist/result_of_drawing/drawing.dart';
import 'package:patronist/pattern_size/fiited_bluse.dart';
import 'package:patronist/pattern_size/hoodie.dart';
import 'package:patronist/pattern_size/puffed_sleeve.dart';
import 'package:patronist/pattern_size/shorts.dart';
import 'package:patronist/result_of_drawing/result.dart';
import 'package:patronist/screens/about_screen.dart';
import 'package:patronist/screens/customers.dart';
import 'package:patronist/screens/details_screen.dart';
import 'package:patronist/screens/forgot_password.dart';
import 'package:patronist/screens/get_started.dart';
import 'package:patronist/screens/home_screen.dart';
import 'package:patronist/screens/invite_screen.dart';
import 'package:patronist/screens/login_screen.dart';
import 'package:patronist/screens/new_customer.dart';
import 'package:patronist/screens/persons_data.dart';
import 'package:patronist/screens/saved_size.dart';
import 'package:patronist/screens/settings_screen.dart';
import 'package:patronist/screens/sign_up.dart';

import 'bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/': (context) => const StartScreen(),

        LoginScreen.routeName: (context) => const LoginScreen(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        ForgotPass.routeName: (context) => const ForgotPass(),
        AboutScreen.routeName: (context) => const AboutScreen(),
        BottomNavBar.routeName: (context) => const BottomNavBar(),
        BasicBlouse.routeName: (context) => const BasicBlouse(),
        BasicSkirt.routeName: (context) => const BasicSkirt(),
        BasicSleeve.routeName: (context) => const BasicSleeve(),
        Hoodie.routeName: (context) => const Hoodie(),
        Shorts.routeName: (context) => const Shorts(),
        FittedBlouse.routeName: (context) => const FittedBlouse(),
        PuffedSleeve.routeName: (context) => const PuffedSleeve(),
        BasicTrouser.routeName: (context) => const BasicTrouser(),
        Details.routeName: (context) => const Details(),
        SavedSizes.routeName: (context) => const SavedSizes(),
        DrawingNow.routeName: (context) => const DrawingNow(),
        ChooseCustomer.routeName: (context) => const ChooseCustomer(),
        HomeScreen.routeName: (context) => HomeScreen(),
        NewCustomer.routeName: (context) => NewCustomer(),
        AddNew.routeName: (context) => const AddNew(),
        Invite.routeName: (context) => const Invite(),
        Setting.routeName: (context) => const Setting(),
        Drawing.routeName: (context) => const Drawing(),
      },
    );
  }
}
