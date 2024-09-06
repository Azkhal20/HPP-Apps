import 'package:flutter/material.dart';
import 'package:hpp_tax_center/components/header.dart';
import 'package:hpp_tax_center/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: secondary,
          elevation: 0,
          toolbarHeight: 160,
          title: const Header()),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [],
      )),
    );
  }
}
