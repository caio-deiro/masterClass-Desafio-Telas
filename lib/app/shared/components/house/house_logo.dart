import 'package:flutter/material.dart';

class HouseLogo extends StatelessWidget {
  const HouseLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(Icons.house, size: 50, color: Color(0xFF4362D7)),
    );
  }
}
