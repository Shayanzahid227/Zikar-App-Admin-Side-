import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:flutter/material.dart';

final authFieldDecoration = InputDecoration(
  prefixIcon: Icon(
    Icons.search,
    size: 17,
    color: greyColor,
  ),
  hintText: "Search",
  hintStyle: style16.copyWith(color: Color.fromRGBO(190, 191, 192, 1.0)),
  prefixIconColor: Color.fromRGBO(190, 191, 192, 1.0),
  suffixIconColor: Color.fromRGBO(190, 191, 192, 1.0),
  fillColor: Color.fromRGBO(237, 238, 240, 1.0),
  filled: true,
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
    borderSide:
        const BorderSide(color: Color.fromRGBO(237, 238, 240, 1.0), width: 1.0),
    borderRadius: BorderRadius.circular(6),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
        const BorderSide(color: Color.fromRGBO(237, 238, 240, 1.0), width: 1.0),
    borderRadius: BorderRadius.circular(6),
  ),
  errorBorder: OutlineInputBorder(
    borderSide:
        const BorderSide(color: Color.fromRGBO(237, 238, 240, 1.0), width: 1.0),
    borderRadius: BorderRadius.circular(6),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide:
        const BorderSide(color: Color.fromRGBO(237, 238, 240, 1.0), width: 2.0),
    borderRadius: BorderRadius.circular(6),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide:
        const BorderSide(color: Color.fromRGBO(237, 238, 240, 1.0), width: 2.0),
    borderRadius: BorderRadius.circular(6),
  ),
);
