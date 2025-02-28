import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/home_page.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // ใช้ธีมมืด
      home: HomeScreen(),
    );
  }
}
