import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

Container onBoard(image) {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 20,
    ),
    child: RiveAnimation.asset(
      image,
    ),
  );
}
