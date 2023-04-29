import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  UserPage({
    super.key,
    required this.student,
    required this.studentt,
    required this.student1,
    required this.student2,
    required this.student3,
    required this.student4,
    required this.student5,
    required this.student6,
    required this.student7,
    required this.student8,
  });
  final String student;
  final String studentt;
  int student1;
  final String student2;
  final String student3;
  final String student4;
  final String student5;
  int student6;
  int student7;
  final String student8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'UserPage',
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              student,
              style: const TextStyle(fontSize: 30, color: Colors.cyan),
            ),
          ),
          Text(
            studentt,
            style: const TextStyle(fontSize: 30, color: Colors.indigo),
          ),
          Text(
            student1.toString(),
            style: const TextStyle(fontSize: 30, color: Colors.cyan),
          ),
          Text(student2,
              style: const TextStyle(fontSize: 30, color: Colors.indigo)),
          Text(
            student3,
            style: const TextStyle(fontSize: 30, color: Colors.indigo),
          ),
          Text(
            student4,
            style: const TextStyle(fontSize: 30, color: Colors.indigo),
          ),
          Text(
            student5,
            style: const TextStyle(fontSize: 30, color: Colors.indigo),
          ),
          Text(student6.toString(),
              style: const TextStyle(fontSize: 30, color: Colors.indigo)),
          Text(student7.toString(),
              style: const TextStyle(fontSize: 30, color: Colors.indigo)),
          Text(student8,
              style: const TextStyle(fontSize: 30, color: Colors.indigo)),
        ],
      ),
    );
  }
}
