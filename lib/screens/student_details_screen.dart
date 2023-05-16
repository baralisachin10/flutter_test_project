import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentDetails extends StatefulWidget {
  const StudentDetails({super.key});

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  List<Students> students = [
    Students(
        name: 'sachin',
        address: 'Bharatpur',
        email: 'sachin@gmail.com',
        gender: 'male',
        phone: '9805801096'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students Details'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(students[0].name!),
            subtitle: Text(students[0].email!),
            leading: const CircleAvatar(child: Text('0')),
          );
        },
        itemCount: 1,
      ),
    );
  }
}
