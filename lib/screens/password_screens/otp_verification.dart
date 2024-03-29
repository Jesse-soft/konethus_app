import 'package:flutter/material.dart';
import '../../components/constants.dart';
import '../../components/cupertino_button.dart';
import 'reset_password.dart';

class OTPVerification extends StatefulWidget {
  static String id = 'otp_verification';
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    _textFieldOTP(bool first, bool last) {
      return SizedBox(
        height: 85,
        child: AspectRatio(
          aspectRatio: 0.7,
          child: TextFormField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counter: const Offstage(),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 2,
                  color: kprimaryColor,
                ),
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
            ),
          ),
        ),
      );
    }

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
                    Navigator.pop(context);
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
              'Please check your email',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 30,
            ),
            child: Text(
              'We’ve sent a code to Konethus@Konethus.com',
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _textFieldOTP(
                  true,
                  false,
                ),
                _textFieldOTP(
                  false,
                  false,
                ),
                _textFieldOTP(
                  false,
                  false,
                ),
                _textFieldOTP(
                  false,
                  true,
                ),
              ],
            ),
          ),
          cupertinoButton(
            () {
              Navigator.pushNamed(
                context,
                ResetPassWord.id,
              );
            },
            const Text(
              'Send Code',
            ),
            20,
            10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Send code again',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
