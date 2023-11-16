import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MyNavigatorBar extends StatefulWidget implements PreferredSizeWidget{
  const MyNavigatorBar({super.key});

  @override
  State<MyNavigatorBar> createState() => _MyNavigatorBarState();
  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _MyNavigatorBarState extends State<MyNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return const GNav(tabs:  [
      GButton(icon: Icons.home)
    ]);
  }
}