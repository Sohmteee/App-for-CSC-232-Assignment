import 'data.dart';
import 'student.dart';

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

String studentsListToCsv(List<dynamic> studentsList) {
  // Create the header row with the column names
  final header = "Reg Number,Name,Sex,Department,State of Origin,Phone Number,Email Address";

  // Map each student to a row in the CSV format
  final rows = studentsList.map((student) {
    final mappedStudent = mapToStudent(student);
    return "${mappedStudent.regNumber},${mappedStudent.firstName} ${mappedStudent.lastName},${mappedStudent.sex},${mappedStudent.department},${mappedStudent.stateOfOrigin},${mappedStudent.phoneNumber},${mappedStudent.email}";
  }).join("\n");

  // Combine the header and rows to form the full CSV string
  return "$header\n$rows";
}

// Call this function to get the CSV string
final csv = studentsListToCsv(studentsList);

// Write the CSV string to a file
File("students.csv").writeAsString(csv);
