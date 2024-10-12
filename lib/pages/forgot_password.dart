// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:practice_flutter_2/components/button.dart';
import 'package:practice_flutter_2/components/image_component.dart';
import 'package:practice_flutter_2/components/text_field.dart';

class lupaPassword extends StatelessWidget {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    myImage(
                      Width: 300,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Masukan alamat email Anda untuk mendapatkan reset kata sandi',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    My_TextField(
                      hintText: 'email',
                      obscureText: false,
                      labelText: 'Masukan Email',
                      controller: emailController,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Center(
                  child: MyButton(
                    buttonText: 'RESET PASSWORD',
                    colorText: Colors.white,
                    colorButton: Colors.black,
                    Width: 330,
                    Height: 60,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
