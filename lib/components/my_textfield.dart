import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {

  final TextEditingController controller;
  final String hinttext;
  final TextInputType textInputType;
  final bool obscure;

  const myTextField({super.key, required this.controller, required this.hinttext, required this.textInputType, required this.obscure});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextField(
        keyboardType: textInputType,
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
            fillColor: Colors.grey[200],
            filled: true,
            hintText: hinttext,
        hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }


}
