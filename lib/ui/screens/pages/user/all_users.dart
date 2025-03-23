import 'package:code_structure/custom_widgets/zikar/custom_header.dart';
import 'package:flutter/material.dart';

class AllUsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      name: 'Pages   /',
      title: 'Users   /    All Users',
      widget: Column(children: [Text("All Users Screen")]),
    );
  }
}
