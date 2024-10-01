// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class buttonRegister extends StatefulWidget {
  const buttonRegister({super.key});

  @override
  State<buttonRegister> createState() => _buttonRegisterState();
}

class _buttonRegisterState extends State<buttonRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      body:
          Expanded(
            child: Center(
              heightFactor: 1,
              child: Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Center(
                  child: Text("SIGN UP", style: TextStyle(
                      color: Colors.white,
                      fontSize: 26, fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
          )
    );
  }
}
