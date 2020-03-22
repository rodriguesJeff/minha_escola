import 'package:flutter/material.dart';

class Boletim extends StatefulWidget {
  @override
  _BoletimState createState() => _BoletimState();
}

class _BoletimState extends State<Boletim> {
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
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Color(0xffF8B195),
                  borderRadius: BorderRadius.circular(15)
                ),
              ),
            );
          }, 
        ),
      ),   
    );
  }
}