import 'package:hive_flutter/hive_flutter.dart';

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
  String stateOfOrigin;

  @HiveField(5)
  String email;

  @HiveField(6)
  int regNumber;

  @HiveField(7)
  String phoneNumber;

  @HiveField(8)
  Student({
    required this.firstName,
    required this.lastName,
    required this.sex,
    required this.department,
    required this.stateOfOrigin,
    required this.regNumber,
    required this.phoneNumber,
    required this.email,
  });
}
