import 'package:flutter/material.dart';
import 'package:konethus_app/screens/add_details/add_details.dart';
import 'package:konethus_app/screens/password_screens/forgotten_password.dart';
import 'package:konethus_app/screens/home_page/home_screen.dart';
import 'package:konethus_app/screens/login_screens/login_screen.dart';
import 'package:konethus_app/screens/password_screens/otp_verification.dart';
import 'package:konethus_app/screens/password_screens/reset_password.dart';
import 'package:konethus_app/screens/password_screens/success_password.dart';
import 'package:konethus_app/screens/signup_screens/signup2_screen.dart';
import 'package:konethus_app/screens/signup_screens/signup_screen.dart';
import 'package:konethus_app/screens/splash_screen.dart';
import 'screens/home_page/bottom_nav_bar_pages/home.dart';
import 'screens/home_page/bottom_nav_bar_pages/notifications_screen.dart';
import 'screens/home_page/bottom_nav_bar_pages/post_screen.dart';
import 'screens/home_page/bottom_nav_bar_pages/shorts_screen.dart';
import 'screens/home_page/bottom_nav_bar_pages/user_screen.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // Future<FirebaseApp> firebaseApp = Firebase.initializeApp();

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpWithMail.id: (context) => const SignUpWithMail(),
        ForgottenPassWord.id: (context) => ForgottenPassWord(),
        ResetPassWord.id: (context) => const ResetPassWord(),
        OTPVerification.id: (context) => const OTPVerification(),
        SuccessFulPassword.id: (context) => const SuccessFulPassword(),
        AddDetails.id: (context) => const AddDetails(),
        Home.id: (context) => const Home(),
        NotificationsScreen.id: (context) => const NotificationsScreen(),
        PostScreen.id: (context) => const PostScreen(),
        ShortsScreen.id: (context) => const ShortsScreen(),
        UserScreen.id: (context) => const UserScreen()
      },
    );
  }
}
