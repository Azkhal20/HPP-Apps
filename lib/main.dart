import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

import 'package:hpp_tax_center/user_auth/auth_controller.dart';
import 'package:hpp_tax_center/utils/loading.dart';
import 'package:hpp_tax_center/routes/routes.dart';

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
  runApp( App());
}

class App extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authC.streamAuthStatus,
      builder: (context, snapshot){
        print(snapshot.data);
        if(snapshot.connectionState == ConnectionState.active){
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'HPP Tax Center',
            theme: ThemeData(
              fontFamily: 'Poppins',
            ),
            initialRoute: snapshot.data != null ? Routes.home : Routes.splash,
            getPages: [
              GetPage(name: Routes.splash, page: () => SplashView()),
              GetPage(name: Routes.login, page: () => LoginPage()),
              GetPage(name: Routes.regist, page: () => RegistPage()),
              GetPage(name: Routes.forgot, page: () => ForgotPage()),
              GetPage(name: Routes.otp, page: () => Otp()),
              GetPage(name: Routes.otpSuccess, page: () => OtpSuccess()),
              GetPage(name: Routes.reset, page: () => ResetPage()),
              GetPage(name: Routes.home, page: () => HomePage()),
              GetPage(name: Routes.persediaanAwal, page: () => PerAwal()),
            ],
            // home: snapshot.data != null ? HomePage() : SplashView(),
          );
        }
        return LoadingView();
      },
    );
  }
}