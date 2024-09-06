import 'package:flutter/material.dart';
import 'package:hpp_tax_center/themes.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  // Track the selected tab index
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Separate Text widget for the title
          Text(
            'Perusahaan Dagang',
            style: semibold24.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16), 

          Container(
            decoration: BoxDecoration(
              color: Colors.yellow[700], 
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                _buildTab(context, 'P.Awal', 0), 
                _buildTab(context, 'Pembelian', 1), 
                _buildTab(context, 'P.Akhir', 2), 
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to build each tab
  Widget _buildTab(BuildContext context, String title, int index) {
    bool isSelected = selectedIndex == index; // Check if this tab is selected
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index; // Update the selected tab
          }); 
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              title,
              style: semibold14.copyWith(
                color: isSelected ? Colors.black : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
