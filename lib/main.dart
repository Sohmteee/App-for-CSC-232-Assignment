import 'package:app_for_csc_232_assignment/data.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/homepage_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.openBox('myBox');

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
      home: const HomePageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
