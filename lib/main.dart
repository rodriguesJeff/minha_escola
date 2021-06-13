import 'package:flutter/material.dart';
import 'package:minha_escola/features/onboarding/pages/onboarding.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Minha escola',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Onboarding(),
    ));
