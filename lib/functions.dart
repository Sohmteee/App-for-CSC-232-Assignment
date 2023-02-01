import 'data.dart';
import 'student.dart';
import 'dart:io';
import 'package:csv/csv.dart';
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

void exportToCsv() async {
  // Get the list of students from the Hive box
  var students = box.values.toList();

  // Convert the students to maps so we can access their properties
  List<Map> studentsList = students.map((e) => e.toMap()).toList();

  // Convert the students to a list of lists
  List<List<String>> csvData = [
    [
      'firstName',
      'lastName',
      'sex',
      'department',
      'stateOfOrigin',
      'regNumber',
      'phoneNumber',
      'email'
    ],
  ];
  studentsList.forEach((student) {
    csvData.add([
      student['firstName'],
      student['lastName'],
      student['sex'],
      student['department'],
      student['stateOfOrigin'],
      student['regNumber'].toString(),
      student['phoneNumber'],
      student['email'],
    ]);
  });

  // Create a CSV string from the data
  String csv = const ListToCsvConverter().convert(csvData);

  // Save the CSV string to a file on the device
  final Directory dir = await getApplicationDocumentsDirectory();
  final File file = File("${dir.path}/students.csv");
  await file.writeAsString(csv);
}

