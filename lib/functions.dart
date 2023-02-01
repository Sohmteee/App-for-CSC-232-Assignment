import 'data.dart';
import 'student.dart';
import 'dart:io';

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



exportStudentsList(list) async {
  final Directory directory = Directory.systemTemp;
  final File file = File('${directory.path}/students.csv');
  String contents = list.join('\n');
  await file.writeAsString(contents);
}
