import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Student extends HiveObject {
  String firstName, lastName, sex, department, email;
  int regNumber, phone;

  Student({
    required this.firstName,
    required this.lastName,
    required this.sex,
    required this.department,
    required this.regNumber,
    required this.phone,
    required this.email,
  });
}
