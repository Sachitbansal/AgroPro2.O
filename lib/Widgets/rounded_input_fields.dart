import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {

  RoundedInputField(
      {this.label = '',
      this.keyboardtype,
      this.controller,
      this.validator,
      this.iconChoose,
      required this.onChanged,
      required this.suffixiIcon,
      this.hint = ''});

  final iconChoose;
  final suffixiIcon;
  final String hint;
  final validator;
  final void Function(String?) onChanged;
  final controller;
  final keyboardtype;
  final String label;
  final bool obscureText = true;

  @override

  Widget build(BuildContext context) {

    return TextFormField(
      keyboardType: keyboardtype,
      validator: validator,
      onSaved: onChanged,
      obscureText: obscureText,
      controller: controller,
      cursorColor: Colors.blue[800],
      decoration: InputDecoration(
        fillColor: Colors.green[50],
        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(width: 0.8),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            width: 0.8,
            color: Colors.green,
          ),
        ),
        hintText: hint,
        labelText: label,
        prefixIcon: Icon(
          iconChoose,
          color: Colors.green,
        ),
        suffixIcon: Icon(
          suffixiIcon,
            color: Colors.green
        )
      ),
    );
  }
}
