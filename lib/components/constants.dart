import 'package:flutter/material.dart';

const kprimaryColor = Color(0xff0065FF);
const InputDecoration inPutDecoration = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(
    color: Color.fromARGB(
      155,
      158,
      158,
      158,
    ),
    fontSize: 12,
  ),
  // labelText: 'Enter Your Email',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        12.0,
      ),
    ),
  ),
);
// errorText: 'PassWord doesn\'t match',
//                     errorStyle: const TextStyle(
//                       color: Color.fromARGB(
//                         177,
//                         244,
//                         67,
//                         54,
//                       ),
//                     ),
// InputDecoration(
//                     suffixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           isPassWordVisible = !isPassWordVisible;
//                         });
//                       },
//                       icon: isPassWordVisible
//                           ? const Icon(
//                               Icons.visibility_outlined,
//                             )
//                           : const Icon(
//                               Icons.visibility_off_outlined,
//                             ),
//                     ),
//                     hintText: 'Enter PassWord',
//                     hintStyle: const TextStyle(
//                       color: Color.fromARGB(
//                         165,
//                         158,
//                         158,
//                         158,
//                       ),
//                       fontSize: 12,
//                     ),
//                     // labelText: 'Enter Your PassWord',
//                     border: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(
//                           12.0,
//                         ),
//                       ),
//                     ),
//                   ),