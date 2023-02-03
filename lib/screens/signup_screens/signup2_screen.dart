import 'package:flutter/material.dart';
import 'package:konethus_app/components/cupertino_button.dart';

import '../../components/constants.dart';

class SignUpWithMail extends StatefulWidget {
  static String id = 'continue_with_maill';
  const SignUpWithMail({super.key});

  @override
  State<SignUpWithMail> createState() => _SignUpWithMailState();
}

class _SignUpWithMailState extends State<SignUpWithMail> {
  final emailController = TextEditingController();
  String passWord = '';
  bool isPassWordVisible = false;
  @override
  void initState() {
    emailController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
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
          Hero(
            tag: 'konethus1',
            child: Image.asset(
              'assets/images/konethus.png',
            ),
          ),
          const Text(
            'Create account',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: TextFormField(
                    controller: emailController,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: inPutDecoration.copyWith(
                      hintText: 'Enter Email Address',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    keyboardType: TextInputType.name,
                    decoration: inPutDecoration.copyWith(
                      hintText: 'Username',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 0,
                  ),
                  child: TextFormField(
                    onChanged: (value) => setState(() {
                      passWord = value;
                    }),
                    onFieldSubmitted: (value) => setState(() {
                      passWord = value;
                    }),
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !isPassWordVisible,
                    decoration: inPutDecoration.copyWith(
                      hintText: 'Enter PassWord',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPassWordVisible = !isPassWordVisible;
                          });
                        },
                        icon: isPassWordVisible
                            ? const Icon(
                                Icons.visibility_outlined,
                              )
                            : const Icon(
                                Icons.visibility_off_outlined,
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          cupertinoButton(
            () {},
            const Text(
              'Create account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            20,
            20,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              const Text(
                'By creating an account or signing you agree to our',
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  " Terms and Conditions",
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
