import 'package:flutter/material.dart';
import 'package:hpp_tax_center/components/header_section.dart';
import 'package:hpp_tax_center/components/history_section.dart';
import 'package:hpp_tax_center/components/quick_access_menu_sec.dart';
import 'package:hpp_tax_center/components/report_section.dart';
import 'package:hpp_tax_center/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        elevation: 0,
        title: Text("TAX CENTER"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Column(
          children: [
          // Header section with store name and type
          HeaderSection(),

          // Quick Access Menu Section
          QuickAccessMenu(),

          // Report Section
          ReportSection(),

          // History Section
          HistorySection(),
        ],
      ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}

