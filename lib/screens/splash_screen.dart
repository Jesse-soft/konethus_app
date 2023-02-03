import 'package:flutter/material.dart';
import 'package:konethus_app/components/constants.dart';
import 'package:konethus_app/screens/home_screen.dart';
import 'package:konethus_app/screens/onboarding_screen.dart';
import 'package:rive/rive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splash_screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _nanigateToHome();
    super.initState();
  }

  _nanigateToHome() async {
    final prefs = await SharedPreferences.getInstance();
    final showHome = prefs.getBool('showHome') ?? false;
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
// ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            showHome ? homeScreen() : const OnboardingScreen(),
      ),
    );
    // showHome ? homeScreen() : const OnboardingScreen();
  }

  onboardingScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const OnboardingScreen(),
      ),
    );
  }

  homeScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RiveAnimation.asset(
          'assets/images/konethus.riv',
        ),
      ),
      backgroundColor: kprimaryColor,
    );
  }
}
