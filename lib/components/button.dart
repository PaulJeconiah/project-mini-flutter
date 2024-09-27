// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_flutter_2/pages/login_page.dart';
import 'package:practice_flutter_2/pages/register_page.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        GestureDetector(
          onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder:
                      (context) => RegisterPage(),
                  )
              );
          },
          child: Container(
            height: 53,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.black,
              // border: Border.all(color: Colors.black, width: 3),
              borderRadius:BorderRadius.all(Radius.circular(30)),
            ),
            child: Center(
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(width: 20, height: 20,),

        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder:
                    (context) => LoginPage(),
                )
            );
          },
          child: Container(
            height: 53,
            width: 320,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 3, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Center(
              child: Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


