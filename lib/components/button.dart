// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_flutter_2/pages/login_page.dart';
import 'package:practice_flutter_2/pages/register_page.dart';
import 'package:practice_flutter_2/pages/registering_stores.dart';

class MyButton extends StatefulWidget {
  final String buttonText;
  final Color colorText;
  final Color colorButton;
  final double Height;
  final double Width;

  const MyButton({
    super.key,
    required this.buttonText,
    required this.colorText,
    required this.colorButton,
    required this.Width,
    required this.Height,
  });

  @override
  State<MyButton> createState() => _buttonRegisterState();
}

class _buttonRegisterState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.Height,
      width: widget.Width,
      decoration: BoxDecoration(
        color: widget.colorButton,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Center(
        child: Text(
          widget.buttonText,
          style: TextStyle(
            color: widget.colorText,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
