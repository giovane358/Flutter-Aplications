import 'package:flutter/material.dart';

class ResposiveLayout extends StatelessWidget {
  final Widget mobileResponsive;
  final Widget tabletResponsive;
  final Widget desktopResponsive;

  const ResposiveLayout(
      {super.key,
      required this.mobileResponsive,
      required this.tabletResponsive,
      required this.desktopResponsive});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileResponsive;
        } else if (constraints.maxWidth < 1100) {
          return tabletResponsive;
        } else {
          return desktopResponsive;
        }
      },
    );
  }
}
