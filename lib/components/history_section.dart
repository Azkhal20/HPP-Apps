import 'package:flutter/material.dart';

class HistorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Histori",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          // List of history items
          _buildHistoryItem("Pensil", "100 pcs - 10.000 /pcs", "P. Awal"),
          _buildHistoryItem("Pensil", "100 pcs - 10.000 /pcs", "P. Awal"),
          _buildHistoryItem("Pensil", "100 pcs - 10.000 /pcs", "P. Awal"),
        ],
      ),
    );
  }

  Widget _buildHistoryItem(String product, String details, String type) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                details,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
          Text(
            type,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
