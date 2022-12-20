import 'package:emotion_diary/main.dart';
import 'package:emotion_diary/views/components/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AddDiaryScreen extends StatelessWidget {
  const AddDiaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedDay = ModalRoute.of(context)!.settings.arguments as DateTime;

    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "${selectedDay.year}년 ${selectedDay.month}월 ${selectedDay.day}일",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "제목을 입력해주세요.",
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "오늘 하루의 일을 적어보세요.",
                ),
                maxLines: 15,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("asset/images/smiling.png"),
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("asset/images/neutral.png"),
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("asset/images/sad.png"),
                      iconSize: 50,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "일기 저장",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
