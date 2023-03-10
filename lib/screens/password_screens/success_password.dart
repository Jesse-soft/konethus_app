import 'package:flutter/material.dart';
import 'package:konethus_app/screens/login_screens/login_screen.dart';

import '../../components/cupertino_button.dart';

class SuccessFulPassword extends StatelessWidget {
  static String id = 'successful_password';
  const SuccessFulPassword({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 60,
              bottom: 20,
            ),
            child: Text(
              'Password changed',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Your password has been changed successfully',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 15,
                color: Color.fromARGB(
                  166,
                  0,
                  0,
                  0,
                ),
              ),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
            ),
          ),
          cupertinoButton(
            () {
              Navigator.pushNamed(
                context,
                LoginScreen.id,
              );
            },
            const Text(
              'Log In',
            ),
            20,
            20,
          )
        ],
      ),
    );
  }
}
