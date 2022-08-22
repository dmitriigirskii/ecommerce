import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/cart.dart';

class CartRepository {
  static final http.Client httpClient = http.Client();

  Future<Cart> findOne() async {
    final response = await httpClient.get(
      Uri.parse('${dotenv.env['API_V3']}/53539a72-3c5f-4f30-bbb1-6ca10d42c149'),
    );

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      return Cart.fromJson(body);
    }
    throw Exception('error fetching sales');
  }
}
