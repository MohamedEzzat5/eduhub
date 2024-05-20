import 'package:flutter/material.dart';

class CustomAddNewTypeTextField extends StatelessWidget {
  const CustomAddNewTypeTextField({
    super.key, required this.controller, required this.label,
  });
  final TextEditingController controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label,textDirection: TextDirection.rtl,),
        floatingLabelAlignment: FloatingLabelAlignment.start,
      ),
    );
  }
}
