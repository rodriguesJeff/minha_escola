import 'package:flutter/material.dart';
import 'package:minha_escola/core/widgets/textField.dart';

class PasswordRecoveryPage extends StatefulWidget {
  @override
  _PasswordRecoveryPageState createState() => _PasswordRecoveryPageState();
}

class _PasswordRecoveryPageState extends State<PasswordRecoveryPage> {
  final matController = TextEditingController();
  final nvSenhaController = TextEditingController();
  final nvSenha2Controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff345D7E),
      appBar: AppBar(
        backgroundColor: Color(0xff345D7E),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(height: 40),
                  Text('Recuperar senha',
                      style: TextStyle(fontSize: 38, color: Colors.white)),
                  SizedBox(height: 40),
                  textField(matController, false, 'matricula', 'matricula'),
                  SizedBox(height: 10),
                  textField(
                      nvSenhaController, true, 'nova senha', 'nova senha'),
                  SizedBox(height: 10),
                  textField(nvSenha2Controller, true, 'repetir nova senha',
                      'repetir nova senha'),
                  SizedBox(height: 10),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffF8B195),
                        borderRadius: BorderRadius.circular(50)),
                    child: FlatButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          //var matricula = matController.text;
                          var senha = nvSenhaController.text;
                          var senha2 = nvSenha2Controller.text;
                          if (senha == senha2) {
                            Navigator.pushNamed(context, '/login');
                          }
                        }
                      },
                      child: Icon(Icons.trending_flat,
                          size: 20, color: Color(0xff345D7E)),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
