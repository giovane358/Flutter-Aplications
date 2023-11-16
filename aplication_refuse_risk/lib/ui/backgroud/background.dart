import 'package:application_refuse_risk/data/widget/widget.dart';
import 'package:flutter/material.dart';

class BackgroudScreen extends StatelessWidget {
  final Widget child;
  const BackgroudScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
   
    return Container(
      padding: const EdgeInsets.all(0),
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Image.asset(
            'assets/risk.png',
            width: double.maxFinite,
            height: 200,
          ),
          ContainerField(child: child)
        ],
      ),
    );
  }
}
