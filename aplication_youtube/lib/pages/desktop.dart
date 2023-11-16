import 'package:flutter/material.dart';

class DesktoptHome extends StatefulWidget {
  const DesktoptHome({super.key});

  @override
  State<DesktoptHome> createState() => _HomePageState();
}

class _HomePageState extends State<DesktoptHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
    );
  }
}
