import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_card.dart';

class CartGridPage extends StatelessWidget {
  const CartGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy product (ganti sesuai kebutuhan)
    final products = [
      ProductModel(
        name: "Apple",
        image: "assets/apple.png",
        price: 5000,
        type: "Fruit",
      ),
      ProductModel(
        name: "Banana",
        image: "assets/banana.png",
        price: 3000,
        type: "Fruit",
      ),
      ProductModel(
        name: "Orange",
        image: "assets/orange.png",
        price: 4000,
        type: "Fruit",
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Products")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) =>
            ProductCard(product: products[index]),
      ),
    );
  }
}
