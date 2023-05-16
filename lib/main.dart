import 'package:flutter/material.dart';
import 'package:testproject/screens/studentAddScreen.dart';
import './screens/student_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Screen',
      initialRoute: '/studentAdd',
      routes: {
        '/studentAdd': (context) => const StudentAdd(),
        '/studentDetails': (context) => const StudentDetails()
      },
    );
  }
}
