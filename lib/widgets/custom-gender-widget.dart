import 'package:flutter/material.dart';

class customGenderWidget extends StatelessWidget {
  const customGenderWidget({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final String image;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 155,
      decoration: BoxDecoration(
        color: Color(0xFF24263B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(image, width: 144, height: 144),
          Text(text, style: TextStyle(fontSize: 20, color: Color(0xFF8B8C9E))),
        ],
      ),
    );
  }
}