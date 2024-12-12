import 'package:flutter/material.dart';

Widget fun({required void Function()? press, required Widget icon}) {
  return IconButton(
    onPressed: press,
    icon: icon,
  );
}
