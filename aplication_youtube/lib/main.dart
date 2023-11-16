import 'package:aplication_youtube/responsive/responsive_layout.dart';
import 'package:aplication_youtube/responsive/responsive_mobile.dart';
import 'package:aplication_youtube/responsive/responsive_tablet.dart';
import 'package:aplication_youtube/responsive/resposive_desktop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ResposiveLayout(
        mobileResponsive: MobileLayout(),
        tabletResponsive: TabletLayout(),
        desktopResponsive: DesktopLayout(),
      ),
    );
  }
}
