// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class My_TextField extends StatelessWidget {
  final String hintText;

  const My_TextField({
    super.key,
    required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
                color: Colors.black, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
                color: Colors.black45,
                width: 2
            ),
          ),
          fillColor: Colors.white12,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
