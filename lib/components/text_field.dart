// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class My_TextField extends StatefulWidget {
  final controller;
  final bool obscureText;
  final String hintText;
  final String labelText;

  const My_TextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.labelText,
    required this.controller});

  @override
  State<My_TextField> createState() => _My_TextFieldState();
}

class _My_TextFieldState extends State<My_TextField> {
  bool _isObscured = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        controller: widget.controller,
        obscureText: _isObscured,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
                color: Colors.black, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
                color: Colors.black45, width: 2),
          ),
          fillColor: Colors.white12,
          filled: true,
          labelText: widget.labelText,
          hintText: widget.hintText,
          suffixIcon: widget.obscureText
              ? IconButton(icon: Icon(
            _isObscured ?
            Icons.visibility_off : Icons.visibility,),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}
