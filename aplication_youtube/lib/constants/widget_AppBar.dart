import 'package:aplication_youtube/constants/routes.dart';

import 'package:flutter/material.dart';

import '../styles/colors.dart';

final appBar = AppBar(
  backgroundColor: backgroundPrimeary,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(logo),
      ),
      Container(
        color: backgroundLight,
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(broadcast),
            Image.asset(bell),
            Image.asset(search),
          ],
        ),
      ),
    ],
  ),
);


// class ChannelPhoto extends StatefulWidget {
//   const ChannelPhoto({super.key});

//   @override
//   State<ChannelPhoto> createState() => _AvatarPhotoState();
// }

// class _AvatarPhotoState extends State<ChannelPhoto> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 25, // Largura do círculo
//       height: 25, // Altura do círculo
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(
//           color: Colors.white,
//           width: 1,
//         ),
//       ),
//       child: const CircleAvatar(
//         backgroundImage: AssetImage(iconYT),
//       ),
//     );
//   }
// }
