import 'package:aplication_youtube/constants/routes.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

class ExploreList extends StatefulWidget {
  const ExploreList({super.key});

  @override
  State<ExploreList> createState() => _ExploreListState();
}

class _ExploreListState extends State<ExploreList> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    return Container(
      width: size.width,
      height: size.height * 0.06,
      padding: const EdgeInsets.all(8.0),
      color: Colors.amber,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Explore(),
          ListView.builder(
            itemBuilder: (context, index) {},
          )
        ],
      ),
    );
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: ShapeDecoration(
        color: const Color(0xFF272727),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Stack(children: [Image.asset(explore)]),
          ),
        ],
      ),
    );
  }
}
