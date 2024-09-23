// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_flutter_2/components/text_field.dart';

class RegisterPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.grey[600],
            title: Center(child:
            Text("DAFTAR AKUN", style:
            TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            )
            ),
          ),

          const SizedBox(width: 20, height: 20),

          // Username Textfield
          My_TextField(
            hintText: 'Username',
          ),

          const SizedBox(width: 20, height: 20),

          // Email Textfield
          My_TextField(
            hintText: 'Email',
          ),

          const SizedBox(width: 20, height: 20),

          //Password Textfield
          My_TextField(
            hintText: 'Password',
          ),
        ],
      ),
    );
  }
}
