import 'package:exercicio_semana_2/app/shared/components/facebook/facebook_button.dart';
import 'package:flutter/material.dart';

class FacebookForm extends StatelessWidget {
  const FacebookForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 400,
      ),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    disabledBorder: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 0.9,
                      color: Colors.grey[300] ?? Colors.grey,
                    )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 0.9,
                      color: Colors.grey[300] ?? Colors.grey,
                    )),
                    hintText: 'Email ou telefone',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    disabledBorder: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.9,
                        color: Colors.grey[300] ?? Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 0.9,
                      color: Colors.grey[300] ?? Colors.grey,
                    )),
                    hintText: 'Senha',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              SizedBox(height: 15),
              FacebookButton(),
              SizedBox(height: 15),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Esqueceu a senha?',
                    style: TextStyle(
                      color: Colors.blue[700],
                    ),
                  )),
              Divider(height: 1, thickness: 1.0, color: Colors.grey[400]),
              SizedBox(height: 25),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.green[500],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Criar nova conta',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
