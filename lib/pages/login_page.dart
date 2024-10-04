// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:practice_flutter_2/components/button.dart';
import 'package:practice_flutter_2/components/image_component.dart';
import 'package:practice_flutter_2/components/text_field.dart';
import 'package:practice_flutter_2/pages/forgot_password.dart';
import 'package:practice_flutter_2/pages/register_page.dart';

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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(top: 50),
              child: myImage(
                Width: 300,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  My_TextField(
                    hintText: 'Username',
                    obscureText: false,
                    labelText: "Masukan Username",
                    controller: usernameController,
                  ),
                  SizedBox(
                    height: 30,
                  ),
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
              child: Column(
                children: [
                  Center(
                    child: MyButton(
                      buttonText: 'LOGIN',
                      colorText: Colors.white,
                      colorButton: Colors.black,
                      Width: 330,
                      Height: 60,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun KasirKu?',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => lupaPassword(),
                      ),
                    );
                  },
                  child: Text(
                    'Lupa Password?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
