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

listToStudent(studentList) {
  return Student(
    firstName: studentList[0],
    lastName: studentList[1],
    sex: studentList[2],
    department: studentList[3],
    stateOfOrigin: studentList[4],
    regNumber: streeeeeeeeeeeeeeeddddddddddddddddddddddddddd8udentList[5] ,
    phoneNumber: studentList[6],
    email: studentList[7],
  );
}
