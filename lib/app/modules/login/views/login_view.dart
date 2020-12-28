import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minha_escola/app/modules/login/controllers/login_controller.dart';
import 'package:minha_escola/app/utils/keys.dart';

import 'widgets/text_field_widget.dart';

class LoginView extends GetView<LoginController> {
  var mailController = Utils.mailController;
  var passController = Utils.passController;
  var formKey = Utils.formKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff345D7E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0
      ),
      body: GetBuilder<LoginController>(
        builder: (_) => Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text(
                  'Login Aluno',
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white
                  )
                ),
                SizedBox(height: 30),
                Form(
                  key: formKey,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        textField(mailController, false, 'matrícula', 'matrícula'),                      
                        SizedBox(height: 10),
                        textField(passController, true, 'senha', 'senha'),
                        SizedBox(height: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xffF8B195),
                            borderRadius: BorderRadius.circular(50) 
                          ),
                          child: FlatButton(
                            onPressed: () async {                            
                              if (formKey.currentState.validate()){
                                var mat = mailController.text;
                                var pass = passController.text;

                                var isLogged = await _.login(mat, pass);
                                print(isLogged);
                                switch (isLogged){
                                  case true:
                                    Get.toNamed('/profile');
                                  break;
                                  case false:
                                    Get.dialog(AlertDialog(
                                      backgroundColor: Colors.white,
                                      actions: [
                                        FlatButton(
                                          onPressed: () {Get.back();},
                                          child: Text("Tentar Novamente!")
                                        ),
                                      ],
                                      content: Container(
                                        width: double.infinity,
                                        height: MediaQuery.of(context).size.height * 0.2,
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Text("Infelizmente não foi possível fazer login.\nVerifique seus dados e tente novamente!"),
                                              SizedBox(height: 15),
                                              CircularProgressIndicator()
                                            ],
                                          )
                                        ),
                                      ),
                                    ));
                                  break;
                                  default:
                                    Get.dialog(AlertDialog(
                                      actions: [
                                        FlatButton(
                                          onPressed: () {Get.back();},
                                          child: Text("Tentar Novamente!")
                                        ),
                                      ],
                                      content: Text("Desculpe-nos pelo transtorno!\nPedimos que verifique sua conexão e tente novamente!"),
                                    ));
                                }
                              }
                            },
                            child: Icon(
                              Icons.trending_flat,
                              size: 20,
                              color: Color(0xff345D7E) 
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {                          
                            Navigator.pushNamed(context, '/rec_senha');
                          },
                          child: Text(
                            'Esqueci minha senha',
                            style: TextStyle(color: Colors.white)
                          )
                        )
                      ]
                    ),
                  ),
                )
              ]
            ),
          )
        ),
      )
    );
  }
}