import 'package:flutter/material.dart';
import 'package:minha_escola/features/onboarding/pages/onboarding.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

void main() async {
  runApp(MyApp());

  await Parse().initialize(
    'TZLdWVj4CD1nanF16kBhG3PkdzQynGu8yCo1azDF',
    'https://parseapi.back4app.com/',
    clientKey: 'uKR6zeDfwAGVUnj45ACnkuGGTTSWu8mlIG9ukFXN',
    autoSendSessionId: true,
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Minha escola',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Onboarding(),
    );
  }
}
