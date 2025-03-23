import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Check for screen width to differentiate between mobile, tablet, and desktop
        if (constraints.maxWidth < 600) {
          // For mobile (small screen)
          return mobileBody;
        } else if (constraints.maxWidth < 1100) {
          // For tablet (medium screen)
          return tabletBody;
        } else {
          // For desktop (large screen)
          return desktopBody;
        }
      },
    );
  }
}
