import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Student extends HiveObject {
  String firstName;
  String lastName;
  String sex;
  String department;
  String email;
  int regNumber;
  int phone;

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
