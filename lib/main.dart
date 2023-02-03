import 'package:flutter/material.dart';
import 'package:konethus_app/screens/password_screens/forgotten_password.dart';
import 'package:konethus_app/screens/home_screen.dart';
import 'package:konethus_app/screens/login_screens/login_screen.dart';
import 'package:konethus_app/screens/password_screens/otp_verification.dart';
import 'package:konethus_app/screens/password_screens/reset_password.dart';
import 'package:konethus_app/screens/password_screens/success_password.dart';
import 'package:konethus_app/screens/signup_screens/signup2_screen.dart';
import 'package:konethus_app/screens/signup_screens/signup_screen.dart';
import 'package:konethus_app/screens/splash_screen.dart';

void main() {
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpWithMail.id: (context) => const SignUpWithMail(),
        ForgottenPassWord.id: (context) => ForgottenPassWord(),
        ResetPassWord.id: (context) => const ResetPassWord(),
        OTPVerification.id: (context) => const OTPVerification(),
        SuccessFulPassword.id: (context) => const SuccessFulPassword()
      },
    );
  }
}
