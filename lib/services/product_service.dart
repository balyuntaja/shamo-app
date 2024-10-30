import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shamo_app/models/product_model.dart';

class ProductService {
  final Logger logger = Logger();
  String baseUrl = 'https://shamo.balyuntech.my.id/api';

  Future<List<ProductModel>> getProducts() async {
      var url = Uri.parse('$baseUrl/products');
      var headers = {'Content-Type': 'application/json'};

      var response = await http.get(url, headers: headers);

      logger.d(response.body);

      if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal Get Products!');
    }
  }
}
