import 'package:flutter/material.dart';

import 'clip_path.dart';

class HomeScreenBGImage extends StatelessWidget {
  const HomeScreenBGImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Clip1Clipper(),
      child: Container(
        height: 300,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/haircut.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}