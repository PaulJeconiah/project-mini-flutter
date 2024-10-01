// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_flutter_2/components/button_register.dart';
import 'package:practice_flutter_2/components/phone_number_field.dart';
import 'package:practice_flutter_2/components/text_field.dart';

class RegisterPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final referralCodeController = TextEditingController();

  // final Map<String, Map<String, String>> translations = {
  //   'ID': {
  //     'title': 'DAFTAR AKUN',
  //     'username': 'Masukan Username',
  //     'email': 'Masukan Email',
  //     'password': 'Masukan Password',
  //     'phone number': 'Masukan Nomor Telepon',
  //     'referral code': 'Masukan Kode Referral (jika ada)',
  //     'register': 'DAFTAR'
  //   },
  //
  //   'EN': {
  //     'title': 'REGISTER ACCOUNT',
  //     'username': 'Enter Username',
  //     'email': 'Enter Email',
  //     'password': 'Enter Password',
  //     'phone number': 'Enter Phone Number',
  //     'referral code': 'Enter Referral Code (if any)',
  //     'register': 'REGISTER'
  //   },
  //
  //   'MS': {
  //     'title': 'DAFTAR AKAUN',
  //     'username': 'Masukan Nama Pengguna',
  //     'email': 'Masukan Emel',
  //     'password': 'Masukan Kata Laluan',
  //     'phone number': 'Masukan Nombor Telefon',
  //     'referral code': 'Masukan kod Rujukan (jika ada)',
  //     'register': 'DAFTAR'
  //   },
  //
  //   'ES': {
  //     'title': 'REGISTRAR CUENTA',
  //     'username': 'Ingrese Nombre de Usuario',
  //     'email': 'Ingrese Correo Electrónico',
  //     'password': 'Ingrese Contraseña',
  //     'phone': 'Ingrese Número de Teléfono',
  //     'referral': 'Ingrese Código de Referencia (si lo tiene)',
  //     'register': 'REGISTRAR',
  //   },
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.blueAccent,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Center(
                              child: Image.asset(
                                'lib/images/Leonardo_Phoenix_Design_a_modern_logo_for_the_mobile_app_Kasir_3.jpg',
                                height: 300,
                                width: 500,
                              ),
                            )),
                      ),
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    )
                  ],
                )),
            const SizedBox(width: 20, height: 20),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.amber,
                  child: Expanded(
                    child: Column(
                      children: [
                        My_TextField(
                            hintText: 'Username',
                            obscureText: false,
                            labelText: 'Masukan Username',
                            controller: usernameController),
                        SizedBox(
                          height: 20,
                        ),
                        My_TextField(
                            hintText: 'Email',
                            obscureText: false,
                            labelText: 'Masukan Email',
                            controller: emailController),
                        SizedBox(
                          height: 20,
                        ),
                        My_TextField(
                            hintText: 'Password',
                            obscureText: true,
                            labelText: 'Masukan Password',
                            controller: passwordController),
                        SizedBox(
                          height: 20,
                        ),
                        phoneNumberField(
                            controller: phoneNumberController,
                            hintText: 'Nomor Telepon',
                            labelText: 'Masukan Nomor telepon'),
                      ],
                    ),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                child: buttonRegister(),
              ),
            ),
            Expanded(child: Container())
          ],
        ));
  }
}
