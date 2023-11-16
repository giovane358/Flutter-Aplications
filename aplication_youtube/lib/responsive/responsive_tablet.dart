import 'package:aplication_youtube/pages/tablet.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _ResposiveLayoutState();
}

class _ResposiveLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    return const TabletHome();
  }
}
