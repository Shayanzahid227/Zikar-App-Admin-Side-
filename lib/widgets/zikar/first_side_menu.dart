import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:code_structure/core/model/side_menu_mode;l.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
///  custom side menu widget
///
class CustomSideMenuItemsWidget extends StatefulWidget {
  final SideMenuModel sideMenuModelObject; // this is the model

  const CustomSideMenuItemsWidget({
    super.key,
    required this.sideMenuModelObject,
  });

  @override
  State<CustomSideMenuItemsWidget> createState() =>
      _CustomSideMenuItemsWidgetState();
}

class _CustomSideMenuItemsWidgetState extends State<CustomSideMenuItemsWidget> {
  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;

    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected; // Toggle selection on tap
          });
        },
        child: Container(
          // color: _isSelected
          //     ? Colors.grey
          //     : Colors.transparent, // Change background
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                child: Icon(widget.sideMenuModelObject.icon, color: blackColor),
              ),
              Text(
                '${widget.sideMenuModelObject.title}',
                style: style14.copyWith(color: blackColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
