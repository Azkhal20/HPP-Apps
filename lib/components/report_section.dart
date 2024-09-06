import 'package:flutter/material.dart';
import 'package:hpp_tax_center/themes.dart';

class ReportSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Laporan",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(iconColor: primary),
                child: Text("Cetak PDF"),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildReportTile("Pemasukan", "Rp 500.000", Colors.green),
              _buildReportTile("Pengeluaran", "Rp 10.000.000", Colors.red),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReportTile(String title, String amount, Color iconColor) {
    return Column(
      children: [
        Icon(
          title == "Pemasukan" ? Icons.arrow_downward : Icons.arrow_upward,
          color: iconColor,
        ),
        Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        Text(amount, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
