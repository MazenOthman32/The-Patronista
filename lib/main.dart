import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:patronist/pattern_size/basic_skirt.dart';
import 'package:patronist/pattern_size/basic_sleeve.dart';
import 'package:patronist/pattern_size/basic_trouser.dart';
import 'package:patronist/pattern_size/basic_blouse.dart';
import 'package:patronist/result_of_drawing/drawing.dart';
import 'package:patronist/pattern_size/fited_bluse.dart';
import 'package:patronist/pattern_size/hoodie.dart';
import 'package:patronist/pattern_size/puffed_sleeve.dart';
import 'package:patronist/pattern_size/shorts.dart';
import 'package:patronist/result_of_drawing/result.dart';
import 'package:patronist/views/about_screen.dart';
import 'package:patronist/views/customers.dart';
import 'package:patronist/views/details_screen.dart';
import 'package:patronist/views/forgot_password.dart';
import 'package:patronist/views/get_started.dart';
import 'package:patronist/views/home_screen.dart';
import 'package:patronist/views/invite_screen.dart';
import 'package:patronist/views/login_screen.dart';
import 'package:patronist/views/new_customer.dart';
import 'package:patronist/views/persons_data.dart';
import 'package:patronist/views/saved_size.dart';
import 'package:patronist/views/settings_screen.dart';
import 'package:patronist/views/sign_up.dart';
import 'bottom_nav_bar.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: "test@gmail.com",
  //       password: "123456789",
  //     );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
            BasicSkirt.routeName: (context) => BasicSkirt(),
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
            NewCustomer.routeName: (context) => const NewCustomer(),
            AddNew.routeName: (context) => const AddNew(),
            Invite.routeName: (context) => const Invite(),
            Setting.routeName: (context) => const Setting(),
            Drawing.routeName: (context) => const Drawing(),
          },
        );
      }
  }

