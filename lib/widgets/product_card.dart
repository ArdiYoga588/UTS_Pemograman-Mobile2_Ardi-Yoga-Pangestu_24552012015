import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/product_model.dart';
import '../blocs/cart_cubit.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.image, height: 100),
            const SizedBox(height: 10),
            Text(product.name, style: const TextStyle(fontSize: 16)),
            Text("Rp ${product.price}"),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                context.read<CartCubit>().addToCart(product);
              },
              child: const Text("Add to Cart"),
            )
          ],
        ),
      ),
    );
  }
}
