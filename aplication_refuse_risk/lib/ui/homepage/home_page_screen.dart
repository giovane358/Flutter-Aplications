import 'package:application_refuse_risk/ui/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectionIndex = 0;

  final List<Widget> _screens = [const HomeS(), const ServicesScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyhomeBar(),
      body: Container(
          padding: const EdgeInsets.only(top: 10),
          child: IndexedStack(
            index: _selectionIndex,
            children: _screens,
          )),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.blue.withOpacity(0.4),
        rippleColor: Colors.blue.withOpacity(0.5),
        hoverColor: Colors.blue.withOpacity(0.4),
        haptic: true,
        tabBorderRadius: 15,
        tabActiveBorder: Border.all(color: Colors.blue, width: 1),
        gap: 5,
        iconSize: 30,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.blue.withOpacity(0.7),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        duration: const Duration(milliseconds: 900),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Inicio',
          ),
          GButton(
            icon: Icons.sell_rounded,
            text: 'Serviços',
          ),
          GButton(
            icon: Icons.sensor_occupied_sharp,
            text: 'Funcinários',
          ),
          GButton(
            icon: Icons.segment,
            text: 'Configurações',
          ),
        ],
        selectedIndex: _selectionIndex,
        onTabChange: (index) {
          setState(() {
            _selectionIndex = index;
          });
        },
      ),
    );
  }
}

class HomeS extends StatefulWidget {
  const HomeS({super.key});

  @override
  State<HomeS> createState() => _HomeSState();
}

class _HomeSState extends State<HomeS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: const Text('data'),
    );
  }
}

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          ],
        ),
      ),
    );
  }
}
