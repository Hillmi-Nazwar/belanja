import 'package:flutter/material.dart';
import '/models/produk.dart';
import '/widgets/produk_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Product> products = [
    Product(
      name: "Batik Samanhudi Coklat",
      description: "Perpaduan antara warna hitam dan coklat menjadikan batik ini terlihat classic tapi juga mewah.",
      price: 200000,
      imageAsset: "assets/images/batik1.jpg",
    ),
    Product(
      name: "Batik Hitam putih",
      description: "Perpaduan antara warna hitam dan putih menjadikan batik ini terlihat simple tapi juga elegan.",
      price: 150000,
      imageAsset: "assets/images/batik2.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Belanja"),
        backgroundColor: const Color.fromARGB(255, 152, 152, 160),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}