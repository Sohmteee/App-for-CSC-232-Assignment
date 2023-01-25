import 'package:app_for_csc_232_assignment/custom/custom_dropdown.dart';
import 'package:app_for_csc_232_assignment/data.dart';
import 'package:flutter/material.dart';

import 'custom/custom_field.dart';

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
              keyboardType: TextInputType.name,
              controller: firstName,
              hintText: "First Name",
            ),
            const SizedBox(height: 7),
            CustomField(
              keyboardType: TextInputType.name,
              controller: lastName,
              hintText: "Surname",
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: DropdownButton(
                    value: sexValue,
                    hint: const Text("Sex"),
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
                Container(
                  width: 200,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: DropdownButton(
                    value: departmentValue,
                    hint: const Text("Department"),
                    items: department.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        departmentValue = newValue!;
                      });
                    },
                    isExpanded: true,
                    underline: Container(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomDropDown(
              hint: "State of Origin",
              value: stateOfOriginValue,
              data: stateOfOrigin,
            ),
            const SizedBox(height: 20),
            CustomField(
              keyboardType: TextInputType.number,
              controller: regNo,
              hintText: "Reg Number",
            ),
            const SizedBox(height: 20),
            CustomField(
              keyboardType: TextInputType.phone,
              controller: regNo,
              hintText: "Phone Number",
            ),
            const SizedBox(height: 20),
            CustomField(
              keyboardType: TextInputType.emailAddress,
              controller: regNo,
              hintText: "Email Address",
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                Checkbox(
                  value: bypass,
                  onChanged: (value) {
                    setState(() {
                      bypass = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                const Text(
                  "Bypass empty fields",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
