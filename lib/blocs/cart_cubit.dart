import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/product_model.dart';

class CartCubit extends Cubit<List<ProductModel>> {
  CartCubit() : super([]);

  // Tambah item
  void addToCart(ProductModel product) {
    final updated = List<ProductModel>.from(state);
    updated.add(product);
    emit(updated);
  }

  // Hapus item
  void removeFromCart(ProductModel product) {
    final updated = List<ProductModel>.from(state);
    updated.remove(product);
    emit(updated);
  }

  // Update quantity → kita akan duplicate product sesuai qty
  void updateQuantity(ProductModel product, int qty) {
    final updated = List<ProductModel>.from(state);

    // Remove all product of same name
    updated.removeWhere((p) => p.name == product.name);

    // Add product multiple times
    for (int i = 0; i < qty; i++) {
      updated.add(product);
    }

    emit(updated);
  }

  // Hitung total item
  int getTotalItems() {
    return state.length;
  }

  // Total harga keseluruhan
  int getTotalPrice() {
    int total = 0;
    for (var item in state) {
      total += item.price;
    }
    return total;
  }

  // Bonus: clear cart
  void clearCart() {
    emit([]);
  }
}
