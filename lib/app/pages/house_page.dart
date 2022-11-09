import 'package:exercicio_semana_2/app/shared/components/house/house_button.dart';
import 'package:flutter/material.dart';

import '../shared/components/house/house_form.dart';
import '../shared/components/house/house_logo.dart';

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: SizedBox(
            child: Stack(
              children: [
                Container(
                  color: Color(0xFF4362D7),
                  height: MediaQuery.of(context).size.height * 0.50,
                ),
                Positioned(
                  bottom: 150,
                  right: 35,
                  child: HouseForm(),
                ),
                Positioned(
                  top: 100,
                  right: 138,
                  child: HouseLogo(),
                ),
                Positioned(
                  bottom: 127,
                  right: 85,
                  child: HouseButton(),
                ),
                Positioned(
                  bottom: 80,
                  right: 130,
                  child: Text(
                    'FORGOT PASSWORD?',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
