class Student {
  String firstName,
      lastName,
      sex,
      department,
      stateOfOrigin,
      email,
      phoneNumber;
  int regNumber;

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

  toList() {
    return [
      firstName,
      lastName,
      sex,
      department,
      stateOfOrigin,
      email,
      phoneNumber,
      regNumber,
    ];
  }

  listToStudent(studentList) {
    return Student(
      firstName: studentList[0],
      lastName: studentList[1],
      sex: studentList[2],
      department: studentList[3],
      stateOfOrigin: studentList[4],
      regNumber: studentList[0],
      phoneNumber: studentList[0],
      email: studentList[0],
    );
  }
}
