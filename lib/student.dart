import 'package:hive/hive.dart';

class Student extends HiveObject {
  String firstName, lastName, sex, email;
  int regNumber, phone;

  Student({
    required this.firstName,
    required this.lastName,
    required this.sex,
    required this.firstName,
  });
}
