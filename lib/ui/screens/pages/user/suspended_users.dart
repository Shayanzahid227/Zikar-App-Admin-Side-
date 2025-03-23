import 'package:code_structure/custom_widgets/zikar/custom_header.dart';
import 'package:flutter/material.dart';

class SuspendedUsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      name: 'Pages   /',
      title: 'Users   /    Suspended Users',
      widget: Column(children: [Text("Suspended Users Screen")]),
    );
  }
}
