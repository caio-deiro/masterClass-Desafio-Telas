import 'package:exercicio_semana_2/app/pages/splash/splash_page.dart';

import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Exercicios da masterClass semana 2',
      home: SplashPage(),
    );
  }
}
