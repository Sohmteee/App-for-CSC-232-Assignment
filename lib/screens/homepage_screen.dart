import 'package:flutter/material.dart';
import '../custom/custom_dropdown.dart';
import '../custom/custom_field.dart';
import '../data.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomField(
                keyboardType: TextInputType.name,
                controller: firstName,
                hintText: "First Name",
              ),
              const SizedBox(height: 20),
              CustomField(
                keyboardType: TextInputType.name,
                controller: lastName,
                hintText: "Surname",
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomDropDown(
                    hint: "Sex",
                    value: sexValue,
                    data: sex,
                    width: 120,
                  ),
                  CustomDropDown(
                    hint: "Department",
                    value: departmentValue,
                    data: department,
                    width: 200,
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
      ),
    );
  }
}