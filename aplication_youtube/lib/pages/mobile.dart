import 'package:aplication_youtube/constants/routes.dart';
import 'package:aplication_youtube/constants/widget_AppBar.dart';
import 'package:aplication_youtube/constants/widget_explore.dart';
import 'package:aplication_youtube/styles/colors.dart';
import 'package:flutter/material.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _HomePageState();
}

class _HomePageState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundPrimeary,
      appBar: appBar,
      body: const Column(
        children: [
          ExploreList(),
        ],
      ),
    );
  }
}
