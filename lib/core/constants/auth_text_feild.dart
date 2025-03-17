import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:flutter/material.dart';

final authFieldDecoration = InputDecoration(
  hintText: "Search here",
  hintStyle: style16.copyWith(color: filledColor),
  prefixIconColor: filledColor,
  suffixIconColor: filledColor,
  fillColor: textFieldFillColor,
  filled: true,
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: textFieldFillColor, width: 1.0),
    borderRadius: BorderRadius.circular(6),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: textFieldFillColor, width: 1.0),
    borderRadius: BorderRadius.circular(6),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: textFieldFillColor, width: 1.0),
    borderRadius: BorderRadius.circular(6),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: textFieldFillColor, width: 2.0),
    borderRadius: BorderRadius.circular(6),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: textFieldFillColor, width: 2.0),
    borderRadius: BorderRadius.circular(6),
  ),
);
