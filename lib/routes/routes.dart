// UNTUK ROUTING PAGE
class Routes {
  // Jika ingin pindah halaman:
  // initialRoute: Routes.splash,
  static const String splash = '/splash';
  static const String login = '/login';
  static const String regist = '/regist';
  static const String forgot = '/forgot';
  static const String otp = '/otp';
  static const String otpSuccess = '/otp-success';
  static const String reset = '/reset';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String persediaanAwal = '/persediaan_awal';

  // Jika ingin pindah halaman tanpa mengirim data:
  // initialRoute: Routes.splash,
  // getPages: [
  //   GetPage(name: Routes.home, page: () => HomePage()),
  // ],
}
