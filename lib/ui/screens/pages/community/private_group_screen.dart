import 'package:code_structure/custom_widgets/zikar/custom_header.dart';
import 'package:flutter/material.dart';

class PrivateGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      name: 'Pages   /',
      title: 'Users   /    Private Group',
      widget: Column(children: [Text("Private Group Screen")]),
    );
  }
}
