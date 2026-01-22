import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/cart_cubit.dart';
import '../models/product_model.dart';

class CartSummaryPage extends StatelessWidget {
  const CartSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart Summary")),
      body: BlocBuilder<CartCubit, List<ProductModel>>(
        builder: (context, cart) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final item = cart[index];

                      return ListTile(
                        leading: Image.asset(item.image, width: 40),
                        title: Text(item.name),
                        subtitle: Text("Rp ${item.price}"),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                    "Total Items: ${context.read<CartCubit>().getTotalItems()}",
                    style: const TextStyle(fontSize: 16)),
                Text(
                    "Total Price: Rp ${context.read<CartCubit>().getTotalPrice()}",
                    style: const TextStyle(fontSize: 16)),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    context.read<CartCubit>().clearCart();
                  },
                  child: const Text("Checkout (Clear Cart)"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
