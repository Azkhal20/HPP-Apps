import 'package:flutter/material.dart';
import 'package:hpp_tax_center/view/splash.view.dart';
import 'package:hpp_tax_center/auth/login.dart';
import 'package:hpp_tax_center/auth/forgot.dart';
import 'package:hpp_tax_center/auth/regist.page.dart';
import 'package:hpp_tax_center/auth/reset.dart';
import 'package:hpp_tax_center/auth/otp.dart';
import 'package:hpp_tax_center/view/persediaan.awal.dart';

import 'package:sms_autofill/sms_autofill.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';


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
      home: SplashView(),
    );
  }
}