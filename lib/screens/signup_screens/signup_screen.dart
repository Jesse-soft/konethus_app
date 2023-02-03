import 'package:flutter/material.dart';
import 'package:konethus_app/components/constants.dart';
import 'package:konethus_app/components/cupertino_button.dart';
import 'package:konethus_app/components/raw_material_sign_in_button.dart';
import 'package:konethus_app/screens/signup_screens/signup2_screen.dart';

import '../login_screens/login_screen.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  static String id = 'signup_screen';
  SignUpScreen({super.key});
  double height = 20;
  double width = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Hero(
            tag: 'konethus1',
            child: Image.asset(
              'assets/images/konethus.png',
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              children: const [
                Text(
                  'Explore the app',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    8.0,
                  ),
                  child: Text(
                    'Now your finances are in one place and always under control',
                    style: TextStyle(
                      color: Color.fromARGB(
                        200,
                        20,
                        20,
                        23,
                      ),
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: cupertinoButton(
                    () {},
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          child: SizedBox(
                            height: height,
                            width: width,
                            child: Image.asset(
                              "assets/images/google.png",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        const Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    0,
                    0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: rawMaterialButton(
                    "assets/images/apple.png",
                    'Continue With Apple',
                    kprimaryColor,
                    () {},
                  ),
                ),
                rawMaterialButton(
                  "assets/images/email.png",
                  'Continue With Email',
                  kprimaryColor,
                  () {
                    Navigator.pushNamed(
                      context,
                      SignUpWithMail.id,
                    );
                  },
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    LoginScreen.id,
                  );
                },
                child: const Text(
                  "Log in",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
