import 'data.dart';
import 'student.dart';
import 'dart:io';
import 'package:csv/csv.dart';

void clearInfo() {
  firstName.clear();
  lastName.clear();
  sexValue = null;
  departmentValue = null;
  stateOfOriginValue = null;
  regNo.clear();
  phoneNumber.clear();
  email.clear();
}

mapToStudent(Map studentList) {
  return Student(
    firstName: studentList['firstName'],
    lastName: studentList['lastName'],
    sex: studentList['sex'],
    department: studentList['department'],
    stateOfOrigin: studentList['stateOfOrigin'],
    regNumber: studentList['regNumber'],
    phoneNumber: studentList['phoneNumber'],
    email: studentList['email'],
  );
}

convertToCSV(studentsList) {
  List data = [
    [
      "Reg Number",
      "Name",
      "Sex",
      "Department",
      "State of Origin",
      "Phone Number",
      "Email Address"
    ],
    ...studentsList
        .map((student) => [
              mapToStudent(student).regNumber.toString(),
              "${mapToStudent(student).firstName} ${mapToStudent(student).lastName}",
              mapToStudent(student).sex,
              mapToStudent(student).department,
              mapToStudent(student).stateOfOrigin,
              mapToStudent(student).phoneNumber,
              mapToStudent(student).email
            ])
        .toList()
  ];

  String csv = const ListToCsvConverter().convert(data);

  final file = File("student_list.csv");
  file.writeAsStringSync(csv);
}
