import 'package:code_structure/custom_widgets/zikar/custom_header.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      name: 'Pages   /',
      title: 'Users   /    Products',
      widget: Column(children: [Text("Products Screen")]),
    );
  }
}
