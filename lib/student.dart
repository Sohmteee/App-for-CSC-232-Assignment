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

  toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'sex': sex,
      'department': department,
      'stateOfOrigin': stateOfOrigin,
      'regNumber': regNumber,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }

  /* toList() {
    return [
      firstName,
      lastName,
      sex,
      department,
      stateOfOrigin,
      regNumber,
      phoneNumber,
      email,
    ];
  } */
}
