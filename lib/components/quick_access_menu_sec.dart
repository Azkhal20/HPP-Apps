import 'package:flutter/material.dart';

class QuickAccessMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      color: Colors.yellow[700],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildQuickAccessButton('calc HPP', Icons.calculate),
          _buildQuickAccessButton('P. Awal', Icons.inventory),
          _buildQuickAccessButton('Pembelian', Icons.shopping_cart),
          _buildQuickAccessButton('P. Akhir', Icons.account_balance),
        ],
      ),
    );
  }

  Widget _buildQuickAccessButton(String label, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: Icon(icon, size: 30, color: Colors.black),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.black)),
      ],
    );
  }
}
