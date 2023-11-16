import 'package:aplication_youtube/pages/desktop.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _ResposiveLayoutState();
}

class _ResposiveLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return const DesktoptHome();
  }
}
