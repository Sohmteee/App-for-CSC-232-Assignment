import 'data.dart';
import 'student.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

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

Future<String> getAndroidFolderPath() async {
  final directory = await getExternalStorageDirectory();
  return directory!.path;
}

exportStudentsList(list) async {
  String androidFolderPath = await getAndroidFolderPath();
  final File file = File('$androidFolderPath/students.csv');
  String contents = list.join('\n');
  await file.writeAsString(contents);
}
