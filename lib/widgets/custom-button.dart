import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        color: Color(0xFFE83D67),
        child: Text(text, style: TextStyle(fontSize: 32, color: Colors.white)),
      ),
    );
  }
}


class CustomButton2 extends StatelessWidget {
  const CustomButton2({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        color: Color(0xFFE83D67),
        child: Text('Re- Calculate', style: TextStyle(fontSize: 32, color: Colors.white)),
      ),
    );
  }
}