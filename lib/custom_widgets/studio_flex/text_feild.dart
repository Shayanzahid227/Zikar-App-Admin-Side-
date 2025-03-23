// ignore_for_file: camel_case_types, use_key_in_widget_constructors, unused_field

import 'package:flutter/material.dart';

class customtextformfeild extends StatelessWidget {
  final String text;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final int maxline;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  final String? Function(String?)? validator;
  customtextformfeild({
    required this.text,
    this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    this.controller,
    this.onChanged,
    this.maxline = 1,
    this.validator,
  });
  final RegExp _emailRegex = RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      obscureText: obscureText,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(fontWeight: FontWeight.w300),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}
