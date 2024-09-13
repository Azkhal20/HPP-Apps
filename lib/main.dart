import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:hpp_tax_center/view/persediaan_awal.dart';
import 'package:hpp_tax_center/view/splash_view.dart';
import 'package:hpp_tax_center/pages/home_page.dart';

import 'package:hpp_tax_center/auth/login.dart';
import 'package:hpp_tax_center/auth/forgot.dart';
import 'package:hpp_tax_center/auth/otp.dart';
import 'package:hpp_tax_center/auth/reset.dart';
import 'package:hpp_tax_center/auth/regist_page.dart';
import 'package:hpp_tax_center/auth/otp_success.dart';

import 'package:hpp_tax_center/components/header.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
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
      home: RegistPage(),
    );
  }
}