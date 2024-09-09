import 'package:flutter/material.dart';
import 'package:hpp_tax_center/view/home.dart';
import 'package:hpp_tax_center/view/persediaan.awal.dart';
import 'package:hpp_tax_center/view/splash.view.dart';



void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
    );
  }
}