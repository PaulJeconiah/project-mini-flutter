// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, await_only_futures

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_flutter_2/components/button.dart';
import 'package:practice_flutter_2/components/image_component.dart';
import 'package:practice_flutter_2/components/phone_number_field.dart';
import 'package:practice_flutter_2/components/text_field.dart';
import 'package:practice_flutter_2/pages/login_page.dart';
import 'package:practice_flutter_2/pages/registering_stores.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'registering_stores.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();

  final emailController = TextEditingController();

  final phoneNumberController = TextEditingController();

  final passwordController = TextEditingController();

  final referralCodeController = TextEditingController();

  final supabase = Supabase.instance.client;

  User? user;

  // @override
  // void initState() {
  //   signUpUser();
  //   super.initState();
  // }

  void signUpUsers() async {
    try {
      final username = usernameController.text;
      final password = passwordController.text;
      final email = emailController.text;
      final phoneNumber = phoneNumberController.text;

      await supabase.from('users').insert({
        'username': username,
        'password': password,
        'email': email,
        'phone_number': phoneNumber,
      });

      await supabase.auth.signUp(
        email: email,
        password: password,
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => dataTokoPage(),
        ),
      );
    } catch (e) {
      print('error cuy : $e');
    }
  }

  // final Map<String, Map<String, String>> translations = {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.sizeOf(context).width;
    double Height = MediaQuery.sizeOf(context).height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myImage(
                        Width: 200,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 26),
                        ),
                      )
                    ],
                  ),
                )),
            const SizedBox(width: 20, height: 20),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.grey,
                  child: Column(
                    children: [
                      My_TextField(
                        hintText: 'Username',
                        obscureText: false,
                        labelText: 'Masukan Username',
                        controller: usernameController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      My_TextField(
                        hintText: 'Email',
                        obscureText: false,
                        labelText: 'Masukan Email',
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      My_TextField(
                        hintText: 'Password',
                        obscureText: true,
                        labelText: 'Masukan Password',
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      phoneNumberField(
                        controller: phoneNumberController,
                        hintText: 'Nomor Telepon',
                        labelText: 'Masukan Nomor telepon',
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                child: Center(
                  child: GestureDetector(
                    onTap: () async {
                      await signUpUsers;
                    },
                    child: MyButton(
                      buttonText: 'SIGN UP',
                      colorButton: Colors.black,
                      colorText: Colors.white,
                      Width: 330,
                      Height: 60,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      "Sudah punya akun KasirKu?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Container(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}
