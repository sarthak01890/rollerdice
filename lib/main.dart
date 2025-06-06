import 'package:flutter/material.dart';
import 'package:untitled2/gradient_container.dart';
void main() {

  runApp(
        const MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  GradientContainer(Color.fromARGB(255, 53, 3, 106),Color.fromARGB(255, 55, 15, 155)
        ),
      ),
    ),
  );
}
