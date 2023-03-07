import 'package:flutter/material.dart';
import 'package:konethus_app/components/cupertino_button.dart';

import '../../components/constants.dart';
import '../home_page/home_screen.dart';

class AddDetails extends StatelessWidget {
  const AddDetails({super.key});
  static String id = "add_details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                // ignore: prefer_const_constructors
                icon: Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
              TextButton(
                onPressed: () {
                  // controller.animateToPage(
                  //   2,
                  //   duration: const Duration(
                  //     seconds: 3,
                  //   ),
                  //   curve: Curves.bounceOut,
                  // );
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kprimaryColor,
                  ),
                ),
              ),
            ],
          ),
          addDetails(
            headText: 'UserName',
            hintText: 'Enter Your UserName',
          ),
          addDetails(
            headText: 'First Name',
            hintText: 'Enter Last Name',
          ),
          addDetails(
            headText: 'Last Name',
            hintText: 'Enter Last Name',
          ),
          Row(
            children: [
              Expanded(
                child: addDetails(
                  headText: 'Gender',
                  hintText: 'Select',
                ),
              ),
              Expanded(
                child: addDetails(
                  headText: 'Date Of Birth',
                  hintText: 'DD/MM/YY',
                ),
              ),
            ],
          ),
          addDetails(
            headText: 'Country',
            hintText: 'Country Of Origin',
          ),
          addDetails(
            headText: 'State',
            hintText: 'State Of Origin',
          ),
          addDetails(
            headText: 'Track',
            hintText: 'Select',
          ),
          cupertinoButton(() {
            Navigator.pushNamed(
              context,
              HomeScreen.id,
            );
          },
              // ignore: prefer_const_constructors
              Text(
                'Continue',
              ),
              20,
              20)
        ],
      ),
    );
  }
}

addDetails({
  required String headText,
  required String hintText,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 5,
          ),
          child: Text(
            headText,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextFormField(
          style: const TextStyle(
            fontSize: 15,
          ),
          keyboardType: TextInputType.datetime,
          textInputAction: TextInputAction.next,
          decoration: inPutDecoration.copyWith(
            hintText: hintText,
          ),
        ),
      ],
    ),
  );
}
