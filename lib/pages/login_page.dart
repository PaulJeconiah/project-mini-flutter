// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_flutter_2/components/image_component.dart';
import 'package:practice_flutter_2/components/text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
              child: myImage(
                Width: 300,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  My_TextField(
                    hintText: 'Username',
                    obscureText: false,
                    labelText: "Masukan Username",
                    controller: usernameController,
                  ),

                  SizedBox(height: 30,),

                  My_TextField(
                    hintText: 'Password',
                    obscureText: true,
                    labelText: "Masukan Password",
                    controller: passwordController,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
