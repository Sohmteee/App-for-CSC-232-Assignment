import 'package:app_for_csc_232_assignment/custom/custom_dropdown.dart';
import 'package:app_for_csc_232_assignment/data.dart';
import 'package:flutter/material.dart';

import 'custom/custom_field.dart';
import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSC 232 Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppins",
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


