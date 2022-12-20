import 'package:flutter/material.dart';

AppBar MyAppBar() {
  return AppBar(
    title: Text(
      "감정 일기장",
      style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.w700,
      ),
    ),
    backgroundColor: Colors.white,
  );
}
