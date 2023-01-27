import 'package:app_for_csc_232_assignment/data.dart';
import 'package:flutter/material.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Center(
              child: Text("Student List"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(
                    label: Text("Reg Number"),
                  ),
                  DataColumn(
                    label: Text("Name"),
                  ),
                  DataColumn(
                    label: Text("Sex"),
                  ),
                  DataColumn(
                    label: Text("Department"),
                  ),
                  DataColumn(
                    label: Text("State of Origin"),
                  ),
                  DataColumn(
                    label: Text("Phone Number"),
                  ),
                  DataColumn(
                    label: Text("Email Address"),
                  ),
                ],
                rows: testStudentList
                    .map((student) => DataRow(
                          cells: [
                            DataCell(
                              Text(student.regNumber.toString()),
                            ),
                            DataCell(
                              Text(student.firstName),
                            ),
                            DataCell(
                              Text(student.sex),
                            ),
                            DataCell(
                              Text(student.department),
                            ),
                            DataCell(
                              Text(student.stateOfOrigin),
                            ),
                            DataCell(
                              Text(student.phone),
                            ),
                            DataCell(
                              Text(student.email),
                            ),
                          ],
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
