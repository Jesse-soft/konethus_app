import 'package:flutter/cupertino.dart';

Row cupertinoButton(
  void Function()? onpressed,
  Widget child,
  double horizontal,
  double vertical,
) {
  return Row(
    children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: horizontal,
            vertical: vertical,
          ),
          child: CupertinoButton(
            color: const Color(
              0xff0065FF,
            ),
            onPressed: onpressed,
            child: child,
          ),
        ),
      ),
    ],
  );
}
