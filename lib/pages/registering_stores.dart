// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_flutter_2/components/dropdown_button.dart';

class dataTokoPage extends StatefulWidget {
  @override
  State<dataTokoPage> createState() => _dataTokoPageState();
}

class _dataTokoPageState extends State<dataTokoPage> {
  String? _selectedJenisUsaha;
  final List<String> jenisUsaha = [
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
                color: Colors.grey,
                padding: EdgeInsets.all(30),
                child: ButtonDropDown(
                  hint: 'pilih jenis usaha..',
                  valJenisUsaha: (String? value) {
                    setState(() {
                      _selectedJenisUsaha = value;
                    });
                  },
                  jenisUsaha: jenisUsaha,
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
