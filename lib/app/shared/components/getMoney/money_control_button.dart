import 'package:flutter/material.dart';

class MoneyControlButton extends StatelessWidget {
  final String text;
  final String assetText;
  final bool containsIcon;
  final Color color;
  final Color containerColor;
  const MoneyControlButton({
    Key? key,
    required this.text,
    this.assetText = '',
    this.containsIcon = false,
    required this.color,
    required this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: containerColor,
      ),
      child: Center(
          child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          containsIcon
              ? SizedBox(width: 20, child: Image.asset(assetText))
              : SizedBox(),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          ),
        ],
      )),
    );
  }
}
