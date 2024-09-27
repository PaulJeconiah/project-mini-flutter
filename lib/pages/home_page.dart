// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:practice_flutter_2/components/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'lib/images/Leonardo_Phoenix_Design_a_modern_logo_for_the_mobile_app_Kasir_3.jpg',
                        height: 200,
                        width: 300,
                      )),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Center(child: MyButton()),
                )),
          ],
        ),
      ),
    );
  }
}
