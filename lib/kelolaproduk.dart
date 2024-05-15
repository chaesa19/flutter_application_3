import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ManageProductsPage(),
    );
  }
}

class ManageProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kelola Produk'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Tambahkan aksi untuk menambah produk baru
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah produk yang dimiliki
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/product_image.png'), // Ganti dengan gambar produk
            ),
            title: Text('Padi $index'),
            subtitle: Text('Padi adalah... $index'),
            trailing: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                // Tambahkan aksi untuk mengedit produk
              },
            ),
            onTap: () {
              // Tambahkan aksi untuk menampilkan detail produk
            },
          );
        },
      ),
    );
  }
}
