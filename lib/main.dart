// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:practice_flutter_2/pages/front_page.dart';
import 'package:practice_flutter_2/pages/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://okagfnhvjhrcoizyedjl.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9rYWdmbmh2amhyY29penllZGpsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1MTIwMDIsImV4cCI6MjA0NzA4ODAwMn0.9JQjnpDNKpWmPSKEHryJGrOXcPH3NkSlrsP0jYxz3tU',
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
