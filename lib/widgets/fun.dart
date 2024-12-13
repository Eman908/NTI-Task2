import 'package:flutter/material.dart';

Widget fun(
    {required void Function()? press,
    required Widget icon,
    required Color color}) {
  return Material(
    color: color,
    borderRadius: BorderRadius.circular(12),
    child: IconButton(
      onPressed: press,
      icon: icon,
    ),
  );
}
