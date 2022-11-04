import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TinderButton extends StatelessWidget {
  final String text;
  final String asset;

  const TinderButton({
    Key? key,
    required this.text,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(25),
            color: Colors.transparent,
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Positioned(
          top: 14,
          left: 18.5,
          child:
              SizedBox(width: 20, height: 20, child: SvgPicture.asset(asset)),
        ),
      ],
    );
  }
}
