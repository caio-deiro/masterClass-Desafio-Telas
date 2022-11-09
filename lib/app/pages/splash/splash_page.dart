import 'package:exercicio_semana_2/app/pages/facebook_page.dart';
import 'package:exercicio_semana_2/app/pages/get_your_money_page.dart';
import 'package:exercicio_semana_2/app/pages/house_page.dart';
import 'package:exercicio_semana_2/app/pages/tinder_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Desafio MasterClass',
            style: TextStyle(color: Colors.blue, fontFamily: 'Roboto'),
          )),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.white,
              Colors.deepPurple,
            ])),
        width: double.infinity,
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600),
            child: Column(
              children: [
                SizedBox(height: 50),
                SizedBox(
                  width: 150,
                  child: Image.asset('assets/images/dart_logo.png'),
                ),
                SizedBox(height: 50),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TinderPage()));
                          },
                          child: Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 255, 143, 120),
                                    Color.fromARGB(255, 241, 95, 119),
                                    Color.fromARGB(253, 241, 95, 119),
                                    Color.fromARGB(255, 246, 70, 100),
                                  ],
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(80),
                                  bottomRight: Radius.circular(80),
                                )),
                            child: Center(
                              child: Text(
                                'Tinder',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'chalet',
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GetYourMoneyPage()));
                          },
                          child: Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 44, 25, 22),
                                    Color.fromARGB(255, 59, 31, 36),
                                    Color.fromARGB(252, 65, 26, 32),
                                    Color.fromARGB(255, 43, 16, 20),
                                  ],
                                ),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(40)),
                            child: Center(
                              child: Text(
                                'Money Control',
                                style: TextStyle(
                                  color: Colors.indigo[500],
                                  fontFamily: 'chalet',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HousePage()));
                          },
                          child: Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                                color: Color(0xFF4362D7),
                                borderRadius: BorderRadius.circular(40)),
                            child: Center(
                              child: Text(
                                'House Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'chalet',
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => FacebookPage()));
                          },
                          child: Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                                color: Color(0xFF4362D7),
                                borderRadius: BorderRadius.circular(40)),
                            child: Center(
                                child: Image.asset(
                              'assets/images/facebook_logo_name.png',
                              color: Colors.white,
                            )),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
