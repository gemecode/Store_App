import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
  });
  final String hintText;
  final Function(String)? onChanged;
  final bool? obscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     return 'The field cannot be empty';
      //   }
      //   return null;
      // },
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        hintText: hintText,
      ),
      obscureText: obscureText!,
    );
  }
}
