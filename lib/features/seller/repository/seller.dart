import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/seller.dart';

class SellerRepository {
  static final http.Client httpClient = http.Client();

  Future<List<Seller>> findAll() async {
    final response = await httpClient.get(
      Uri.parse('${dotenv.env['API_V3']}/654bd15e-b121-49ba-a588-960956b15175'),
    );

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      final content = body['best_seller'] as List;

      return content.map((dynamic json) {
        return Seller.fromJson(json);
      }).toList();
    }
    throw Exception('error fetching sellers');
  }
}
