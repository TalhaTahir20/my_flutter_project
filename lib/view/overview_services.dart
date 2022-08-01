import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  final String Image;
  final String text;
  final Color color;

  const Services({super.key, required this.Image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(Image), fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(height: 5,),
        Text(text),
      ],
    );
  }
}
