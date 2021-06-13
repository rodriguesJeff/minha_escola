import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff345D7E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Bem vindo ao minha escola',
              style: TextStyle(
                fontSize: 38,
                color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            width: 300,
            height: 61,
            decoration: BoxDecoration(
              color: Color(0xffF8B195),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)
              ),
            ),
            child: FlatButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                var token = prefs.getString('token');
                if (token != null) {
                  Navigator.pushReplacementNamed(context, '/perfil');
                } else {
                  Navigator.pushNamed(context, '/login');
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 34,
                      color: Color(0xff345D7E)
                    ),
                  ),
                  Icon(
                    Icons.trending_flat,
                    size: 50,
                    color: Color(0xff345D7E)
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}