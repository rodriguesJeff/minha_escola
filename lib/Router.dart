import 'package:flutter/material.dart';
import 'package:minha_escola/features/auth/pages/login_page.dart';
import 'package:minha_escola/features/home/pages/home_page.dart';
import 'package:minha_escola/features/auth/pages/password_reset_page.dart';
import 'package:minha_escola/features/boletim/pages/boletim_page.dart';
import 'package:minha_escola/features/onboarding/pages/onboarding.dart';
import 'package:minha_escola/features/notifications/pages/notifications_page.dart';
import 'package:minha_escola/features/auth/pages/password_recovery.dart';

class Routes {
  var router = <String, WidgetBuilder>{
    '/initial': (BuildContext context) => Onboarding(),
    '/login': (BuildContext context) => LoginPage(),
    '/perfil': (BuildContext context) => HomePage(),
    '/boletim': (BuildContext context) => BoletimPage(),
    '/notificacoes': (BuildContext context) => NotificationsPage(),
    '/rec_senha': (BuildContext context) => PasswordResetPage(),
    '/alter_senha': (BuildContext context) => PasswordRecoveryPage(),
  };

  Routes () {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Minha escola',
        theme: ThemeData(
          fontFamily: 'Montserrat'
        ),
        home: Onboarding(),
        routes: router
      )
    );
  }
  
}