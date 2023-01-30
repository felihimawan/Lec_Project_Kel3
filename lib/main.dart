import 'package:flutter/material.dart';
import 'package:lec_project/get_started.dart';
import 'package:lec_project/home.dart';
import 'package:lec_project/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const GetStarted(),
    );
  }
}
