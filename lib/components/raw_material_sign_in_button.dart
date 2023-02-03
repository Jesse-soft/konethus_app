import 'package:flutter/material.dart';

Row rawMaterialButton(
  String image,
  String text,
  Color color,
  void Function()? onPressed,
) {
  return Row(
    children: [
      Expanded(
        child: RawMaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
            side: BorderSide(width: 1, color: color),
          ),
          constraints: const BoxConstraints.tightFor(
            height: 50,
          ),
          hoverColor: const Color(
            0xff0065FF,
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
              const SizedBox(
                width: 19,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Expanded rawMaterialButtonLogIn(
  String image,
  String text,
  double right,
  double left,
) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.only(
        right: right,
        left: left,
      ),
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
          side: const BorderSide(
            width: 1,
            color: Color.fromARGB(
              93,
              83,
              83,
              83,
            ),
          ),
        ),
        constraints: const BoxConstraints.tightFor(
          height: 50,
        ),
        hoverColor: const Color(
          0xff0065FF,
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  image,
                ),
              ),
            ),
            const SizedBox(
              width: 19,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
