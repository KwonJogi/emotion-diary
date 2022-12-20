import 'package:emotion_diary/views/screens/add_diary_screen.dart';
import 'package:emotion_diary/views/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  initializeDateFormatting().then(
    (_) => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/add-diary': (context) => AddDiaryScreen(),
        },
      ),
    ),
  );
}
