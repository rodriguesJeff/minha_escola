import 'package:flutter/material.dart';
import 'package:minha_escola/features/boletim/pages/boletim_controller.dart';

class BoletimPage extends StatefulWidget {
  @override
  _BoletimPageState createState() => _BoletimPageState();
}

class _BoletimPageState extends State<BoletimPage> {
  BoletimController boletimController;

  @override 
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff345D7E),
      appBar: AppBar(
        backgroundColor: Color(0xff345D7E),
        title: Text(
          'Boletim',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30  
          ),  
        ),
        centerTitle: true,
        elevation: 0,
      ), 
      body: Container(),
    );
  }
}