import 'package:exercicio_semana_2/app/shared/components/facebook/facebook_form.dart';
import 'package:flutter/material.dart';

class FacebookPage extends StatelessWidget {
  const FacebookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return Scaffold(
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1000),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 2,
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 80.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 230,
                                  child: Image.asset(
                                    'assets/images/facebook_logo_name.png',
                                    fit: BoxFit.cover,
                                  )),
                              SizedBox(height: 15),
                              Text(
                                'O Facebook ajuda você a se conectar e compartilhar com as pessoas que fazem parte da sua vida',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FacebookForm(),
                          SizedBox(height: 20),
                          RichText(
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Criar uma página ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          'para uma celebridade, uma marca ou uma \n empresa',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      } else {
        return Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 230,
                      child: Image.asset(
                        'assets/images/facebook_logo_name.png',
                        fit: BoxFit.cover,
                      )),
                  SizedBox(height: 20),
                  Text(
                    'O Facebook ajuda você a se conectar e compartilhar com as pessoas que fazem parte da sua vida',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 35),
                  FacebookForm(),
                  SizedBox(height: 20),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Criar uma página ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          TextSpan(
                              text:
                                  'para uma celebridade, uma marca ou uma empresa',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ))
                ],
              ),
            ),
          )),
        );
      }
    });
  }
}
