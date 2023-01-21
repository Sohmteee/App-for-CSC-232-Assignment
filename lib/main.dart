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
              icon: const Icon(Icons.person),
              controller: firstName,
              hintText: "First Name",
            ),
            const SizedBox(height: 7),
            CustomField(
              controller: lastName,
              hintText: "Surname",
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(),
                    ),
                    child: DropdownButton(
                      value: sexValue,
                      items: sex.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          sexValue = newValue!;
                        });
                      },
                      isExpanded: true,
                      underline: Container(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomField(
              icon: const Icon(Icons.numbers),
              controller: regNo,
              hintText: "Reg Number",
            ),
            const SizedBox(height: 7),
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
  final Icon? icon;

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
        icon: widget.icon ??
            const SizedBox(
              width: 20,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: widget.hintText,
        labelText: widget.hintText,
      ),
    );
  }
}
