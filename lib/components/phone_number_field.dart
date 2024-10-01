// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class phoneNumberField extends StatefulWidget {
  final controller;
  final String hintText;
  final String labelText;

  const phoneNumberField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labelText});

  @override
  State<phoneNumberField> createState() => _phoneNumberFieldState();
}

class _phoneNumberFieldState extends State<phoneNumberField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: IntlPhoneField(
        focusNode: FocusNode(),
        initialCountryCode: 'ID',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
        onCountryChanged: (country) {
          print('Country changed to: ' + country.name);
        },
        controller: widget.controller,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
                color: Colors.black, width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
                color: Colors.black45, width: 2),
          ),
          fillColor: Colors.white12,
          filled: true,
          labelText: widget.labelText,
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
