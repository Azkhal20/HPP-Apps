import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hpp_tax_center/user_auth/auth_controller.dart';
import 'report_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Default index untuk Beranda
  final authC = Get.find<AuthController>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Set indeks yang dipilih
    });
  }

  // Daftar halaman yang akan ditampilkan berdasarkan indeks
  static List<Widget> _widgetOptions = <Widget>[
    _HomeContent(), // Halaman Beranda
    ReportPage(), // Halaman Laporan
    Center(
      // Halaman Akun
      child: Text(
        'Halaman Akun',
        style: TextStyle(fontSize: 24),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: "Username",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () => authC.logout(),
            icon: Icon(Icons.logout),
          ),
        ],
        // actions: [
        //   GestureDetector(
        //     onTap: () {},
        //     child: Container(
        //       margin: EdgeInsets.only(right: 20),
        //       width: 30,
        //       height: 30,
        //       child: Image.asset(
        //         "../assets/icons/notification.png",
        //         fit: BoxFit.contain,
        //       ),
        //     ),
        //   ),
        // ],
        backgroundColor: Color(0xFF080C67),
        elevation: 0,
      ),
      body:
          _widgetOptions[_selectedIndex], // Tampilan widget berdasarkan indeks
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: 'Laporan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Konten untuk halaman Beranda
class _HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: ClipPathClass(),
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFF080C67),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ClipPath(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.storefront_outlined,
                                color: Color(0xFF000000)),
                            Text(
                              "Toko Kelontong Azkhal Surya",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            text: "Jenis Usaha: ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            children: [
                              TextSpan(
                                text: "Perusahaan Dagang",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Divider(color: Colors.black),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Color(0xFF000000)),
                            RichText(
                              text: TextSpan(
                                text: "Alamat Toko: ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Jl. Rusak Surya Zavier No. 69",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),
                _buildMenu(), // Menu sebelum laporan
                SizedBox(height: 24),
                _buildLaporan(), // Bagian laporan
                SizedBox(height: 24),
                _buildRiwayat(), // Riwayat transaksi
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMenu() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // BISA DIGANTI PAKE IconButton =
          _buildMenuItem(Icons.add_circle, "Persediaan Awal", onPressed: () {
            Get.toNamed('/persediaan_awal');
          }),
          _buildMenuItem(Icons.add_circle, "Pembelian", onPressed: () {}),
          _buildMenuItem(Icons.add_circle, "Persediaan Akhir", onPressed: () {}),
        ],
      ),
    );
  } //080C67

  Widget _buildMenuItem(IconData icon, String label, {Function()? onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(), // Membuat tombol menjadi lingkaran
            padding: EdgeInsets.all(
                15), // Menambahkan padding agar ukuran lingkaran sesuai
            backgroundColor: Color(0xFF080C67),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildLaporan() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Menjaga jarak antara teks dan tombol
            children: [
              Text(
                'Laporan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Aksi yang ingin dijalankan saat tombol ditekan
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF080C67), // Warna teks
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Radius sudut
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8), // Padding di dalam tombol
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.document_scanner,
                        size: 16), // Ikon di dalam tombol
                    SizedBox(width: 8), // Jarak antara ikon dan teks
                    Text('Print PDF'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_downward, color: Colors.green),
                    SizedBox(height: 8),
                    Text('Pemasukan'),
                    SizedBox(height: 4),
                    Text('Rp 500.000',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.arrow_upward, color: Colors.red),
                    SizedBox(height: 8),
                    Text('Pengeluaran'),
                    SizedBox(height: 4),
                    Text('Rp 10.000.000',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRiwayat() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Riwayat',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 300, // Set a fixed height for the list
            child: ListView.builder(
              itemCount: 4, // Replace with your actual data length
              shrinkWrap: true, // Allow the list to shrink to fit its content
              itemBuilder: (context, index) {
                return RiwayatItem(
                  title: "Pensil",
                  description: "100 pcs - 10.000/pcs",
                  price: "Rp 1.000.000",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


class RiwayatItem extends StatelessWidget {
  final String title;
  final String description;
  final String price;

  const RiwayatItem({
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(description),
          SizedBox(height: 8),
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

// Custom ClipPath
class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
