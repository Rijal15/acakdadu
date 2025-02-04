import 'package:flutter/material.dart';
import 'gradient_container.dart';
void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 92, 13, 227),
          Color.fromARGB(255, 72, 33, 3),
        )
      ),
    ),
  );
}
