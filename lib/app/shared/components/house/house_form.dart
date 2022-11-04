import 'package:flutter/material.dart';

class HouseForm extends StatelessWidget {
  const HouseForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 280,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 20,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'LOGIN',
              style: TextStyle(
                  color: Colors.black, fontSize: 18, fontFamily: 'chalet'),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                label: Text('EMAIL'),
                labelStyle: TextStyle(color: Colors.blue[700], fontSize: 12),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                label: Text('PASSWORD'),
                labelStyle: TextStyle(color: Colors.blue[700], fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
