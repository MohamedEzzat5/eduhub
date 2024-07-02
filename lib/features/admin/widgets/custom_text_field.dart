import 'package:flutter/material.dart';

class CustomAddNewTypeTextField extends StatelessWidget {
  const CustomAddNewTypeTextField({
    super.key,
    required this.controller,
    required this.label,
  });
  final TextEditingController controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      controller: controller,
      decoration: InputDecoration(
        label: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              label,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
            ),
          ],
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        enabledBorder: const UnderlineInputBorder(),
      ),
    );
  }
}
