import 'package:flutter/material.dart';

final TextEditingController firstName = TextEditingController();
final TextEditingController lastName = TextEditingController();
final TextEditingController regNo = TextEditingController();
final TextEditingController phoneNumber = TextEditingController();
final TextEditingController email = TextEditingController();

bool bypass;

String? sexValue;
String? departmentValue;
String? stateOfOriginValue;

List<String> sex = [
  "Male",
  "Female",
];
List<String> department = [
  "Computer Science",
  "Library Science",
];
List<String> stateOfOrigin = [
  "Abia",
  "Adamawa",
  "Akwa Ibom",
  "Anambra",
  "Bauchi",
  "Bayelsa",
  "Benue",
  "Borno",
  "Cross River",
  "Delta",
  "Ebonyi",
  "Edo",
  "Ekiti",
  "Enugu",
  "Gombe",
  "Imo",
  "Jigawa",
  "Kaduna",
  "Kano",
  "Katsina",
  "Kebbi",
  "Kogi",
  "Kwara",
  "Lagos",
  "Nasarawa",
  "Niger",
  "Ogun",
  "Ondo",
  "Osun",
  "Oyo",
  "Plateau",
  "Rivers",
  "Sokoto",
  "Taraba",
  "Yobe",
  "Zamfara"
];
