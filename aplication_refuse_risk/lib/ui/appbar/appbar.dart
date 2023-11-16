import 'package:flutter/material.dart';

class MyhomeBar extends StatefulWidget implements PreferredSizeWidget {
  const MyhomeBar({super.key});

  @override
  State<MyhomeBar> createState() => _MyhomeBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _MyhomeBarState extends State<MyhomeBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      centerTitle: false,
      backgroundColor: Colors.grey[100],
      title: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Olá,",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            "Nome da Empresa",
            textScaleFactor: 0.7,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10, bottom: 0),
          height: 70,
          width: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Stack(
            children: [
              const Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: CircleAvatar(
                  radius: 28,
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset('lib/images/photo.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
