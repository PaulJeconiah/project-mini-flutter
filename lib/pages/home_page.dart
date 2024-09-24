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
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
          Column(
            children: [
              AppBar(
                backgroundColor: Colors.grey[600],
                title: Center(
                  child: Text(
                    "KASIRKU",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20, height: 20),
              Container(
                child: Center(
                    child: Image(
                        image: AssetImage(
                            "lib/images/Leonardo_Phoenix_Design_a_modern_logo_for_the_mobile_app_Kasir_3.jpg"))),
              ),

              const SizedBox(width: 20, height: 20),

              MyButton(),
            ],
          ),
        ],
      ),
    );
  }
}
