import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/product.dart';

class ProductRepository {
  static final http.Client httpClient = http.Client();

  Future<Product> findOne() async {
    final response = await httpClient.get(
      Uri.parse('${dotenv.env['API_V3']}/6c14c560-15c6-4248-b9d2-b4508df7d4f5'),
    );

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return Product.fromJson(body);
    }
    throw Exception('error fetching sales');
  }
}
