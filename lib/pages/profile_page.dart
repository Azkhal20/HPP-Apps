import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laporan'),
        backgroundColor: Color(0xFF080C67),
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
