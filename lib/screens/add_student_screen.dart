import 'package:app_for_csc_232_assignment/functions.dart';
import 'package:app_for_csc_232_assignment/screens/data_screen.dart';
import 'package:app_for_csc_232_assignment/screens/homepage_screen.dart';
import 'package:flutter/material.dart';
import '../custom/custom_dropdown.dart';
import '../custom/custom_field.dart';
import '../data.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      clearInfo();
      super.initState();
    }

    bool validateInfo() {
      bool firstNameIsValid =
          firstName.text.trim().isNotEmpty && firstName.value.text.trim() != "";
      bool lastNameIsValid =
          lastName.text.trim().isNotEmpty && lastName.value.text.trim() != "";
      bool sexIsValid = sexValue != null && sexValue != "";
      bool departmentIsValid = departmentValue != null && departmentValue != "";
      bool stateOfOriginIsValid =
          stateOfOriginValue != null && stateOfOriginValue != "";
      bool regNoIsValid =
          regNo.text.trim().isNotEmpty && regNo.value.text.trim() != "";
      bool phoneNumberIsValid = phoneNumber.text.trim().isNotEmpty &&
          phoneNumber.value.text.trim() != "";
      bool emailIsValid =
          email.text.trim().isNotEmpty && email.value.text.trim() != "";

      return (phoneNumber.value.text.trim() != "");
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(height: 50),
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
                onTap: () {
                  debugPrint(validateInfo().toString());
                  if (validateInfo()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePageScreen(),
                      ),
                    );
                    clearInfo();
                  }
                },
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
