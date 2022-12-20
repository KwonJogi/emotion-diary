import 'package:emotion_diary/views/components/calendar.dart';
import 'package:emotion_diary/views/components/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDay = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Calendar(
                boxDecoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                selectedDay: selectedDay,
                focusedDay: focusedDay,
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    this.selectedDay = selectedDay;
                  });
                  Navigator.pushNamed(
                    context,
                    '/add-diary',
                    arguments: selectedDay,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
