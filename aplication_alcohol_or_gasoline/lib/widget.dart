import 'package:flutter/material.dart';


class ElevatedButtonContainer extends StatelessWidget {
  final Widget child;
  const ElevatedButtonContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size w = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      width: w.width * 5,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.5),
      ),
      child: child,
    );
  }
}

class TitleField extends StatelessWidget {
  final Widget child;
  const TitleField({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size w = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      width: w.width * 0.8,
      child: child,
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size w = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: w.width * 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
