import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hpp_tax_center/user_auth/auth_controller.dart';

class ProfilePage extends StatelessWidget {
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laporan'),
        backgroundColor: Color(0xFF080C67),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Halaman Profile',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
