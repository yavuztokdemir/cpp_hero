import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // HomeScreen'i import edin

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'C++ Notlarım',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF0F4C75), // Arka plan rengi #0F4C75
        body: HomeScreen(), // Ana ekran olarak HomeScreen'i kullanıyoruz
      ),
    );
  }
}
