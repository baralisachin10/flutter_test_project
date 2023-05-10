import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('testApp'),
      ),
      body: Center(
        child: Image.network(
            'https://media.istockphoto.com/id/1193994027/photo/cute-boy-outdoors.jpg?s=612x612&w=0&k=20&c=9t0VR6BCwSZk5ciPSuMzrN0gpfDG2lBoCtHsvoBN0vA='),
      ),
    ),
  ));
}
