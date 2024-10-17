// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_flutter_2/pages/front_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://xkuvfsdfscbxjbcpounf.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhrdXZmc2Rmc2NieGpiY3BvdW5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjg0ODk1NzUsImV4cCI6MjA0NDA2NTU3NX0.zPNbf6Bs-5YHRr5LqCWetjQzZaS7Rlj_q8WTN-F1814',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FrontPage(),
    );
  }
}
