import 'package:aplication_youtube/pages/mobile.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _ResposiveLayoutState();
}

class _ResposiveLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return const MobileHome();
  }
}
