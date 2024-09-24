// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.grey[600],
              title: Center(
                  child: Text(
                "DAFTAR AKUN",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              )),
            ),

            const SizedBox(width: 20, height: 20),

            // Username Textfield
            My_TextField(
              hintText: 'Username',
              obscureText: false,
              labelText: 'Masukan Username',
              controller: usernameController,
            ),

            const SizedBox(width: 20, height: 20),

            // Email Textfield
            My_TextField(
              hintText: 'Email',
              obscureText: false,
              labelText: 'Masukan Email',
              controller: emailController,
            ),

            const SizedBox(width: 20, height: 20),

            //Password Textfield
            My_TextField(
              labelText: 'Masukan Password',
              obscureText: true,
              hintText: 'Password',
              controller: passwordController,
            ),

            const SizedBox(width: 20, height: 20),

            My_TextField(
                hintText: "Nomor Telepon",
                obscureText: false,
                labelText: "Masukan Nomor Telepon",
                controller: phoneNumberController),

            const SizedBox(width: 20, height: 20),

            My_TextField(
                hintText: "Kode Referral",
                obscureText: false,
                labelText: "Masukan Kode Referral (jika ada)",
                controller: referralCodeController),

            const SizedBox(width: 50, height: 50),

            Container(
              height: 53,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.black,
                // border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(
                child: Text(
                  "DAFTAR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Text
          ],
        ),
      ),
    );
  }
}
