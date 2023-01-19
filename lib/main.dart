import 'package:app_for_csc_232_assignment/data.dart';
import 'package:flutter/material.dart';

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
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            CustomField(
              icon: const [Icon(Icons.person)],
              controller: firstName,
              hintText: "First Name",
            ),
            const SizedBox(height: 7),
            CustomField(
              controller: lastName,
              hintText: "Surname",
            ),
            const SizedBox(height: 20),
            CustomField(
              icon: const [
                Icon(Icons.male_rounded),
                Icon(Icons.female_rounded),
              ],
              controller: sex,
              hintText: "Sex",
            ),
            const SizedBox(height: 20),
            CustomField(
              icon: const [Icon(Icons.numbers)],
              controller: regNo,
              hintText: "Reg Number",
            ),
            const SizedBox(height: 20),
            CustomField(
              icon: const [Icon(Icons.home_rounded)],
              controller: faculty,
              hintText: "Faculty",
            ),
            const SizedBox(height: 7),
            CustomField(
              controller: department,
              hintText: "Department",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomField extends StatefulWidget {
  const CustomField({
    super.key,
    required this.hintText,
    required this.controller,
    this.icon,
  });

  final String hintText;
  final TextEditingController controller;
  final List<Icon>? icon;

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        setState(() {
          widget.controller.text = value;
        });
      },
      decoration: InputDecoration(
        icon: widget.icon != null ?
            const [SizedBox(
              width: 20,
            )] : const Row(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: widget.hintText,
        labelText: widget.hintText,
      ),
    );
  }
}
