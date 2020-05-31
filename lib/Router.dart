import 'package:flutter/material.dart';
import 'package:minha_escola/ui/alter_senha.dart';
import 'package:minha_escola/ui/boletim.dart';
import 'package:minha_escola/ui/initial.dart';
import 'package:minha_escola/ui/login.dart';
import 'package:minha_escola/ui/notif.dart';
import 'package:minha_escola/ui/perfil.dart';
import 'package:minha_escola/ui/rec_senha.dart';

class Routes {
  var router = <String, WidgetBuilder>{
    '/initial': (BuildContext context) => Initial(),
    '/login': (BuildContext context) => Login(),
    '/perfil': (BuildContext context) => Perfil(),
    '/boletim': (BuildContext context) => Boletim(),
    '/notificacoes': (BuildContext context) => Notificacoes(),
    '/rec_senha': (BuildContext context) => RecuperaSenha(),
    '/alter_senha': (BuildContext context) => AlterarSenha(),
  };

  Routes () {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Minha escola',
        theme: ThemeData(
          fontFamily: 'Montserrat'
        ),
        home: Initial(),
        routes: router
      )
    );
  }
  
}