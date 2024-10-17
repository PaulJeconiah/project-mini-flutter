// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dataTokoPage extends StatefulWidget {
  @override
  State<dataTokoPage> createState() => _dataTokoPageState();
}

class _dataTokoPageState extends State<dataTokoPage> {
  String? _valJenisUsaha;
  final List<String> _jenisUsaha = [
    "Apotek/Toko Obat & Kecantikan",
    "Bengkel & Carwash",
    "Counter Pulsa & Handphone",
    "Jasa/Service Lainnya",
    "Laundry",
    "Makanan & Minuman",
    "Minimarket/Toko Kelontong/Warung",
    "Online Shop",
    "Persewaan/Rental/Studio Foto",
    "Pertanian",
    "Salon, Spa, Barbershop",
    "Service Elektronik",
    "Toko Alat Tulis/Fotokopi",
    "Toko Bangunan",
    "Toko Elektronik",
    "Toko Lainnya",
    "Toko Pakaian dan Aksesoris"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    'DATA TOKO',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.black,
                padding: EdgeInsets.all(30),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonFormField<String>(
                    value: _valJenisUsaha,
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Pilih Jenis Usaha',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        _valJenisUsaha = newValue;
                      });
                    },
                    items: _jenisUsaha
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'gaowkjm',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
