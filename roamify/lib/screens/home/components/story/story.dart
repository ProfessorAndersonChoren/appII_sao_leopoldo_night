import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String urlImg;
  final String name;

  const Story({
    super.key,
    required this.name,
    required this.urlImg,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xFFA74482),
          radius: 35,
          child: CircleAvatar(
            backgroundImage: AssetImage(urlImg),
            radius: 32,
          ),
        ),
        Text(name),
      ],
    );
  }
}
