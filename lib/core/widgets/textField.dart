import 'package:flutter/material.dart';

Widget textField(
  TextEditingController controller,
  bool pass,
  String label,
  String hint
){
  return TextFormField(
    controller: controller,
    obscureText: pass,
    validator: (value) {
      if (value.isEmpty){
        return 'Campo não pode ser vazio';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: label,
      hintText: hint,
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 2),
        borderRadius: BorderRadius.circular(15)
      ),
    ),
    style: TextStyle(
      color: Colors.white
    ),
  );
}