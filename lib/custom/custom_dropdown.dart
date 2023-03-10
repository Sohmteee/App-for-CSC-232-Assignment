import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  CustomDropDown({
    super.key,
    this.width,
    required this.hint,
    required this.value,
    required this.valueList,
  });

  final double? width;
  final String hint;
  String? value;
  final List<String> valueList;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: DropdownButton(
        value: widget.value,
        hint: Text(widget.hint),
        items: widget.valueList.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            widget.value = newValue!;
            debugPrint(widget.value.toString());
          });
        },
        isExpanded: true,
        underline: Container(),
      ),
    );
  }
}
