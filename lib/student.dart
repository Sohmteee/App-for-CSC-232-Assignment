import 'package:hive_flutter/hive.dart';

@HiveType(typeId: 0)
class Student extends HiveObject {
  @HiveField(0)
  String firstName;

  @HiveField(1)
  String lastName;

  @HiveField(2)
  String sex;

  @HiveField(3)
  String department;

  @HiveField(4)
  String email;

  @HiveField(5)
  int regNumber;

  @HiveField(6)
  int phone;

  @HiveField(7)

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
