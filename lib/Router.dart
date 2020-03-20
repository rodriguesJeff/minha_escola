import 'package:flutter/material.dart';
import 'package:minha_escola/ui/initial.dart';
import 'package:minha_escola/ui/login.dart';
import 'package:minha_escola/ui/perfil.dart';

class Routes {
  var router = <String, WidgetBuilder>{
    '/login': (BuildContext context) => Login(),
    '/perfil': (BuildContext context) => Perfil()
  };

  Routes () {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Minha escola',
        theme: ThemeData(
          primaryColor: Colors.white,
          fontFamily: 'Montserrat'
        ),
        home: Initial(),
        routes: router
      )
    );
  }
  
}