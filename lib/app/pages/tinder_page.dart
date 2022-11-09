import 'package:exercicio_semana_2/app/shared/components/tinder/tinder_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 255, 143, 120),
              Color.fromARGB(255, 241, 95, 119),
              Color.fromARGB(253, 241, 95, 119),
              Color.fromARGB(255, 246, 70, 100),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 600),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            width: 45,
                            height: 45,
                            child: SvgPicture.asset(
                                'assets/images/tinder_logo.svg')),
                        SizedBox(width: 10),
                        Text(
                          'tinder',
                          style: TextStyle(
                            fontFamily: 'chalet',
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text:
                                'By tapping Create Account or Sign in, you agree to our '),
                        TextSpan(
                          text: 'Terms',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: '. Learn how we process your data in our '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Cookies Policy',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                      ])),
                  SizedBox(height: 20),
                  TinderButton(
                    text: 'SIGN IN WITH APPLE',
                    asset: 'assets/images/apple_logo_white.svg',
                  ),
                  SizedBox(height: 10),
                  TinderButton(
                    text: 'SIGN IN WITH FACEBOOK',
                    asset: 'assets/images/facebook-round.svg',
                  ),
                  SizedBox(height: 10),
                  TinderButton(
                    text: 'SIGN IN WITH PHONE NUMBER',
                    asset: 'assets/images/Mobile-Icon-White-on-Grey.svg',
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Trouble Signing in?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
