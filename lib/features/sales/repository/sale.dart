import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/sale.dart';

class SaleRepository {
  static final http.Client httpClient = http.Client();

  Future<List<Sale>> findAll() async {
    final response = await httpClient.get(
      Uri.parse('${dotenv.env['API_V3']}/654bd15e-b121-49ba-a588-960956b15175'),
    );

    if (response.statusCode == 200) {
      final body = json.decode(response.body);
      final content = body['home_store'] as List;

      return content.map((dynamic json) {
        return Sale.fromJson(json);
      }).toList();
    }
    throw Exception('error fetching sales');
  }
}
