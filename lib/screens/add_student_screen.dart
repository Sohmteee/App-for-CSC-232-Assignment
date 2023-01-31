import 'package:app_for_csc_232_assignment/screens/homepage_screen.dart';
import 'package:flutter/material.dart';
import '../custom/custom_field.dart';
import '../data.dart';
import '../functions.dart';
import 'package:email_validator/email_validator.dart';

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

    errorMessage() {
      bool firstNameIsValid =
          firstName.text.trim().isNotEmpty && firstName.value.text.trim() != "";
      bool lastNameIsValid =
          lastName.text.trim().isNotEmpty && lastName.value.text.trim() != "";
      bool sexIsValid = sexValue != null && sexValue != "";
      bool departmentIsValid = departmentValue != null && departmentValue != "";
      bool stateOfOriginIsValid =
          stateOfOriginValue != null && stateOfOriginValue != "";
      bool regNoIsValid = regNo.text.trim().isNotEmpty &&
          regNo.value.text.trim() != "" &&
          regNo.text.trim().length == 10;
      bool phoneNumberIsValid = phoneNumber.text.trim().isNotEmpty &&
          phoneNumber.value.text.trim() != "";
      bool emailIsValid =
          email.text.trim().isNotEmpty && email.value.text.trim() != "";

      if (!firstNameIsValid) return "Please enter your first name";
      if (!lastNameIsValid) return "Please enter your surname";
      if (!sexIsValid) return "Please enter your sex";
      if (!departmentIsValid) return "Please enter your department";
      if (!stateOfOriginIsValid) return "Please enter your state of origin";
      if (!regNoIsValid) return "Please enter your reg number";
      if (!regNoIsValid) {
        return (regNo.text.trim().length == 10)
            ? "Please enter a valid reg number"
            : "Please enter your reg number";
      }
      if (!phoneNumberIsValid) {
        return (phoneNumber.text.trim().length != 11)
            ? "Please enter a valid phone number"
            : "Please enter your phone number";
      }
      if (!emailIsValid) {
        return (EmailValidator.validate(email.text))
            ? "Please enter a valid email address"
            : "Please enter your email address";
      }
      return null;
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

      return (firstNameIsValid &&
          lastNameIsValid &&
          sexIsValid &&
          departmentIsValid &&
          stateOfOriginIsValid &&
          regNoIsValid &&
          phoneNumberIsValid &&
          emailIsValid);
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
                          debugPrint(sexValue.toString());
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
                          debugPrint(departmentValue.toString());
                        });
                      },
                      isExpanded: true,
                      underline: Container(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: DropdownButton(
                  value: stateOfOriginValue,
                  hint: const Text("State of Origin"),
                  items: stateOfOrigin.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      stateOfOriginValue = newValue!;
                      debugPrint(stateOfOriginValue.toString());
                    });
                  },
                  isExpanded: true,
                  underline: Container(),
                ),
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
                controller: phoneNumber,
                hintText: "Phone Number",
              ),
              const SizedBox(height: 20),
              CustomField(
                keyboardType: TextInputType.emailAddress,
                controller: email,
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
                  if (errorMessage() == null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePageScreen(),
                      ),
                    );
                    clearInfo();
                  } else {
                    showDialog(
                        context: context,
                        builder: (BuildContext builder) {
                          return Dialog(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                              ),
                              child: Center(
                                child: Text(errorMessage()!),
                              ),
                            ),
                          );
                        });
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
