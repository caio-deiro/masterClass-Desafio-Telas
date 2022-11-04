import 'package:exercicio_semana_2/app/shared/components/getMoney/money_control_button.dart';
import 'package:flutter/material.dart';

class GetYourMoneyPage extends StatelessWidget {
  const GetYourMoneyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                SizedBox(
                  child: SizedBox(
                    height: 110,
                    width: 110,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(80),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.indigo[500],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(80),
                                bottomLeft: Radius.circular(80),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 60),
                Text(
                  'Get your Money Under Control',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'Manage your expenses.\n Seamlessly',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 60),
                MoneyControlButton(
                  containerColor: Colors.indigo[500] ?? Colors.indigo,
                  text: 'Sign Up with Email ID',
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                MoneyControlButton(
                  containerColor: Colors.white,
                  text: 'Sign Up with Google',
                  color: Colors.black,
                  containsIcon: true,
                  assetText: 'assets/images/google_logo.png',
                ),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
