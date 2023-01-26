import 'package:flutter/material.dart';
import 'screens/homepage.dart';

void main async() {
  await Hive.initFlutter();
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
