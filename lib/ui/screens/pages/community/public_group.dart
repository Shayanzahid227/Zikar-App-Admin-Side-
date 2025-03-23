import 'package:code_structure/custom_widgets/zikar/custom_header.dart';
import 'package:flutter/material.dart';

class PublicGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      name: 'Pages   /',
      title: 'Users   /    Public Group',
      widget: Column(children: [Text("Public Group Screen")]),
    );
  }
}
