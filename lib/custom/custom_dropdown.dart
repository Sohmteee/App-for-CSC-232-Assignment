import 'package:app_for_csc_232_assignment/data.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    super.key,
    required this.hint,
    required this.value,
    required this.data,
  });

  final String hint;
  final String? value;
  final List<String> data;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: DropdownButton(
        value: stateOfOriginValue,
        hint:  Text(widget.hint),
        items: widget.data.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            stateOfOriginValue = newValue!;
          });
        },
        isExpanded: true,
        underline: Container(),
      ),
    );
  }
}
