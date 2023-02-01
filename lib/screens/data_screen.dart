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
    exportStudentsList(studentsList);

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
                    label: SelectableText(
                      "Reg Number",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SelectableText(
                      "Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SelectableText(
                      "Sex",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SelectableText(
                      "Department",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SelectableText(
                      "State of Origin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SelectableText(
                      "Phone Number",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: SelectableText(
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
                            SelectableText(
                                mapToStudent(student).regNumber.toString()),
                          ),
                          DataCell(
                            SelectableText(
                                "${mapToStudent(student).firstName} ${mapToStudent(student).lastName}"),
                          ),
                          DataCell(
                            SelectableText(mapToStudent(student).sex),
                          ),
                          DataCell(
                            SelectableText(mapToStudent(student).department),
                          ),
                          DataCell(
                            SelectableText(mapToStudent(student).stateOfOrigin),
                          ),
                          DataCell(
                            SelectableText(mapToStudent(student).phoneNumber),
                          ),
                          DataCell(
                            SelectableText(mapToStudent(student).email),
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
