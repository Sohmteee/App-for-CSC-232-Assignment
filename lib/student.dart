import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Student extends HiveObject {
  @HiveField(0)
  String firstName;

  @HiveField(0)
  String lastName;

  @HiveField(0)
  String sex;

  @HiveField(0)
  String department;

  @HiveField(0)
  String email;

  @HiveField(0)
  int regNumber;

  @HiveField(0)
  int phone;

  @HiveField(0)

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
