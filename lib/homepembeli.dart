import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String product;
  final String imageUrl;

  ProductCard({required this.product, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8.0),
            Text(product, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text('Rp. 10.000'),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.add_shopping_cart),
                Text('Tambah ke Keranjang'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Map<String, dynamic>> categories = [
    {'name': 'Beras', 'icon': Icons.grain},
    {'name': 'Cabai', 'icon': Icons.whatshot},
    {'name': 'Kacang Hijau', 'icon': Icons.local_florist},
  ];
  List<String> products = ['Beras', 'Cabai', 'Kacang Hijau'];

  List<String> imageUrls = [
    'https://pertanian.sultengprov.go.id/wp-content/uploads/2022/01/pupuk_padi.jpg',
    'https://images.tokopedia.net/img/cache/700/product-1/2020/6/7/8389043/8389043_68f1b346-95f3-497e-b198-79437ca1c8d7_700_700.jpg',
    'https://umsu.ac.id/artikel/wp-content/uploads/2023/08/manfaat-kacang-hijau-untuk-kesehatan.jpg',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF5EE),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Mau belanja apa hari ini...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.help),
                  onPressed: () {},
                ),
              ],
            ),
          ),
Card(
  margin: EdgeInsets.all(16.0),
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://i.ytimg.com/vi/bxfH7NRu_mg/maxresdefault.jpg', // Ganti dengan URL gambar yang sesuai dengan kategori
          width: 100.0,
          height: 100.0,
        ),
        SizedBox(height: 8.0),
        Text(
          'Desa pertanian yang menghasilkan beras, cabai, dan kacang hijau adalah sumber penting bagi masyarakat dan lingkungan sekitarnya.', // Ganti dengan informasi desa
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  ),
),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: Text(
                'Kategori',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 50.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(category['icon'] as IconData),
                    label: Text(category['name'] as String),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: products[index],
                  imageUrl: imageUrls[index],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pembayaran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}


