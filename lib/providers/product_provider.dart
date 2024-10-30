import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shamo_app/models/product_model.dart';
import 'package:shamo_app/services/product_service.dart';

class ProductProvider with ChangeNotifier {
  final Logger _logger = Logger();
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  set products(List<ProductModel> products) {
    _products = products;
    notifyListeners(); // Update UI ketika ada perubahan pada produk
  }

  Future<void> getProducts() async {
    try {
      List<ProductModel> products = await ProductService().getProducts();
      _products = products; // Tetapkan daftar produk yang diambil dari API
      notifyListeners(); // Beri tahu UI setelah data produk diperbarui
    } catch (e) {
      _logger.e('Error in ProductProvider.getProducts: $e');
    }
  }
}
