import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final bool isPassword;
  final TextInputAction action;
  final TextEditingController? controller;
  final String? Function(String?) validator;

  const CustomTextField({
    super.key,
    required this.label,
    required this.inputType,
    required this.validator,
    this.controller,
    this.isPassword = false,
    this.action = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        keyboardType: inputType,
        obscureText: isPassword,
        controller: controller,
        textInputAction: action,
      ),
    );
  }
}
