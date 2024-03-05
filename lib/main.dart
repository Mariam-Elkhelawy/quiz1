import 'package:flutter/material.dart';
import 'package:quiz1/design1/Moody_Mental%20Health.dart';
import 'package:quiz1/design2/workout_app.dart';
import 'package:quiz1/design3/news_app.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: NewsApp()
    );
  }
}

