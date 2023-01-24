import

class CustomField extends StatefulWidget {
  const CustomField({
    super.key,
    this.preffix,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
  });

  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Widget? preffix;

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        setState(() {
          widget.controller.text = value;
        });
      },
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: widget.hintText,
        labelText: widget.hintText,
        prefix: widget.preffix,
      ),
    );
  }
}
