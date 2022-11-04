import 'package:flutter/material.dart';

class HouseButton extends StatelessWidget {
  const HouseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFF4362D7),
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 3,
          )
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        'LOGIN',
        style: TextStyle(
          fontFamily: 'chalet',
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
