import 'package:app_for_csc_232_assignment/data.dart';
import 'package:app_for_csc_232_assignment/functions.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    studentsList = box.get("studentsList");

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 30),
            const Center(
              child: Text(
                "Student List",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(
                    label: Text(
                      "Reg Number",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Sex",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Department",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "State of Origin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Phone Number",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "Email Address",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
                rows: studentsList
                    .map(
                      (student) => DataRow(
                        cells: [
                          DataCell(
                            Text(mapToStudent(student).regNumber.toString()),
                          ),
                          DataCell(
                            Text(
                                "${mapToStudent(student).firstName} ${mapToStudent(student).lastName}"),
                          ),
                          DataCell(
                            Text(mapToStudent(student).sex),
                          ),
                          DataCell(
                            Text(mapToStudent(student).department),
                          ),
                          DataCell(
                            Text(mapToStudent(student).stateOfOrigin),
                          ),
                          DataCell(
                            Text(mapToStudent(student).phoneNumber),
                          ),
                          DataCell(
                            Text(mapToStudent(student).email),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
