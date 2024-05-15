import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AdminHomePage(),
    );
  }
}

class AdminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5EE), // Warna latar belakang utama
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF5EE),
        title: Text('Admin Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: const Color.fromARGB(255, 0, 0, 0)), // Warna ikon putih
            onPressed: () {
              // Aksi notifikasi
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app, color: const Color.fromARGB(255, 7, 7, 7)), // Warna ikon putih
            onPressed: () {
              // Aksi keluar aplikasi
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
              'Selamat Datang, Admin!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: const Color.fromRGBO(0, 0, 0, 1)),
              // Warna teks putih
              ),
            ),
            SizedBox(height: 20.0),
            // Kelola Pengguna
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0), // Mengatur margin horizontal
              decoration: BoxDecoration(
                color: const Color(0xFF1A4D2E), // Warna latar belakang hijau #1A4D2E
                borderRadius: BorderRadius.circular(10.0), // Sudut melengkung
              ),
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.white), // Warna ikon putih
                title: Text(
                  'Kelola Pengguna',
                  style: TextStyle(color: Colors.white), // Warna teks putih
                ),
                onTap: () {
                  // Aksi untuk kelola pengguna
                },
              ),
            ),
            SizedBox(height: 10.0), // Spasi antara item
            // Kelola Produk
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0), // Mengatur margin horizontal
              decoration: BoxDecoration(
                color: const Color(0xFF1A4D2E), // Warna latar belakang hijau #1A4D2E
                borderRadius: BorderRadius.circular(10.0), // Sudut melengkung
              ),
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.white), // Warna ikon putih
                title: Text(
                  'Kelola Produk',
                  style: TextStyle(color: Colors.white), // Warna teks putih
                ),
                onTap: () {
                  // Aksi untuk kelola produk
                },
              ),
            ),
            SizedBox(height: 10.0), // Spasi antara item
            // Kelola Kategori
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0), // Mengatur margin horizontal
              decoration: BoxDecoration(
                color: const Color(0xFF1A4D2E), // Warna latar belakang hijau #1A4D2E
                borderRadius: BorderRadius.circular(10.0), // Sudut melengkung
              ),
              child: ListTile(
                leading: Icon(Icons.category, color: Colors.white), // Warna ikon putih
                title: Text(
                  'Kelola Kategori',
                  style: TextStyle(color: Colors.white), // Warna teks putih
                ),
                onTap: () {
                  // Aksi untuk kelola kategori
                },
              ),
            ),
            SizedBox(height: 10.0), // Spasi antara item
            // Kelola Pesanan
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0), // Mengatur margin horizontal
              decoration: BoxDecoration(
                color: const Color(0xFF1A4D2E), // Warna latar belakang hijau #1A4D2E
                borderRadius: BorderRadius.circular(10.0), // Sudut melengkung
              ),
              child: ListTile(
                leading: Icon(Icons.assignment, color: Colors.white), // Warna ikon putih
                title: Text(
                  'Kelola Pesanan',
                  style: TextStyle(color: Colors.white), // Warna teks putih
                ),
                onTap: () {
                  // Aksi untuk kelola pesanan
                },
              ),
            ),
            SizedBox(height: 10.0), // Spasi antara item
            // Pengaturan
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0), // Mengatur margin horizontal
              decoration: BoxDecoration(
                color: const Color(0xFF1A4D2E), // Warna latar belakang hijau #1A4D2E
                borderRadius: BorderRadius.circular(10.0), // Sudut melengkung
              ),
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.white), // Warna ikon putih
                title: Text(
                  'Pengaturan',
                  style: TextStyle(color: Colors.white), // Warna teks putih
                ),
                onTap: () {
                  // Aksi untuk pengaturan
                },
              ),
            ),
            SizedBox(height: 10.0), // Spasi antara item
            // Tambahkan item menu lainnya sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}

